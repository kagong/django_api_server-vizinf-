from django.shortcuts import render, get_object_or_404
from django.http import HttpResponse, Http404
from django.conf import settings

from . import models
from . import form
from django.http import JsonResponse


def upload_data(request,models_name):

    if models_name == "product":
        post_form = form.PostForm_product
        new = models.product

    elif models_name == "product_hp":
        post_form = form.PostForm_product_hp
        new = models.product_hp

    elif models_name == "admin":
        post_form = form.PostForm_admin
        new = models.admin

    if request.method == "POST":
        form_temp = post_form(request.POST, request.FILES)

        if form_temp.is_valid():
            new = form_temp.save(commit=False)
            new.generate()
            return HttpResponse("good")

        else:
            return Http404()

    else:
        form_temp = post_form()
        return render(request, 'image_server/down.html', {'form': form_temp})


def download(request,name):
    # POST DATA : name , admin , admin phone number,
    #             problem Y/N, image Y/N, category info,
    #             in problem image Y/N,AS number

    admin_name = admin_number = product_detail = as_number = ""
    product_hp_image_flag = False

    product = get_object_or_404(models.product,product_name=name)
    admin_name = product.admin

    admin = get_object_or_404(models.admin, name=admin_name)
    admin_number = admin.phone_number

    problem_flag = product.problem

    product_image_flag = True if product.image != '' else False

    product_category, product_kinds = tuple(name.split('_')[0:2])
    if product_category == 'hp':
        product_hp = get_object_or_404(models.product_hp, product_name=product_kinds)
        product_detail = product_hp.detail
        if problem_flag is True:
            product_hp_image_flag = True if product_hp.image_in_problem != '' else False
            as_number = get_object_or_404(models.product_hp, product_name="A/S").detail
    msg={
        'NAME': name,
        'ADMIN': admin_name,
        'ADMIN_NUMBER': admin_number,
        'PROBLEM': problem_flag,
        'IMAGE': product_image_flag,
        'DETAIL': product_detail,
        'IMAGE_IN_PROBLEM': product_hp_image_flag,
        'AS_NUMBER': as_number
    }

    response = JsonResponse(msg, json_dumps_params={'ensure_ascii': False})

    return response


def download_image(request, name):
    product = get_object_or_404(models.product,product_name=name)

    if product.image != '':
        response = HttpResponse(product.image.open(), content_type='image/png')
        response['Content-Disposition'] = 'attachment; filename="manual.png"'
        return response
    else:
        return Http404()


def download_image_in_problem(request, name):
    product = get_object_or_404(models.product, product_name=name)
    problem_flag = product.problem

    product_category, product_kinds = tuple(name.split('_')[0:2])
    if product_category == 'hp':
        product_hp = get_object_or_404(models.product_hp, product_name=product_kinds)
        if problem_flag is True:
            product_hp_image_url = product_hp.image_in_problem
            response = HttpResponse(product_hp_image_url.open(), content_type='image/png')
            response['Content-Disposition'] = 'attachment; filename="manual.png"'
            return response

    return Http404()
