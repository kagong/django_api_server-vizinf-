from django import  forms
from. import models

class PostForm_product(forms.ModelForm):
    class Meta:
        model = models.product
        fields = ('key_image', 'product_name', 'admin', 'problem', 'image',)

class PostForm_product_hp(forms.ModelForm):
    class Meta:
        model = models.product_hp
        fields = ('product_name', 'detail', 'image_in_problem',)


class PostForm_admin(forms.ModelForm):
    class Meta:
        model = models.admin
        fields = ('name','phone_number',)
