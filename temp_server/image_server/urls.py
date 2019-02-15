from django.urls import path
from . import views
from django.conf import settings
from django.conf.urls.static import static

urlpatterns = [
    path('upload/<str:models_name>', views.upload_data),
    path('download/<str:name>', views.download),
    path('download/<str:name>/image/detail', views.download_image),
    path('download/<str:name>/image/problem', views.download_image_in_problem),
] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
