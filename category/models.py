from django.db import models
from django.urls import reverse

# Create your models here.

class Category(models.Model):
    category_name = models.CharField(max_length = 150, unique=True)
    slug = models.SlugField(max_length = 100, unique=True)
    description = models.TextField()
    category_image = models.ImageField(blank=True, upload_to='categories/')

    class Meta:
        verbose_name = 'category'
        verbose_name_plural = 'categories'

    def get_url(self):
        return reverse('store:products_category', args=[self.slug])
        

    def __str__(self):
        return str(self.category_name)
        
    


