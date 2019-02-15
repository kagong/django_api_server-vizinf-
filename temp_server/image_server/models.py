from django.db import models

# Create your models here.

class product(models.Model):
    key_image = models.ImageField(upload_to="key_images")
    product_name = models.CharField(max_length=100)
    admin = models.CharField(max_length=30)
    problem = models.BooleanField(null=False)
    image = models.ImageField(blank=True)

    def generate(self):
        self.save()

class product_hp(models.Model):
    product_name = models.CharField(max_length=100)
    detail = models.CharField(max_length=100)
    image_in_problem = models.ImageField(blank=True)
    def generate(self):
        self.save()

class admin(models.Model):
    name = models.CharField(max_length=30)
    phone_number = models.CharField(max_length=20)
    def generate(self):
        self.save()