from django.contrib import admin
from .models import Category


class CategoryAdmin(admin.ModelAdmin):
    prepopulated_fields = {'slug':('category_name',)}
    list_display = ('id','category_name','slug')
    list_display_links = ('category_name',)

# Register your models here.
admin.site.register(Category, CategoryAdmin)


