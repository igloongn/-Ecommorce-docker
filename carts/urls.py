from django.urls import path, re_path

from .views import add_cart, cart, remove_cart, remove_cart_item, checkout

app_name = 'carts'

urlpatterns = [
    path('', cart, name='cart'),
    path('add_cart/<int:product_id>/', add_cart, name='add_cart'),
    path('remove_cart/<int:product_id>/<int:cart_item_id>/', remove_cart, name='remove_cart'),
    path('remove_cart_item/<int:product_id>/<int:cart_item_id>/', remove_cart_item, name='remove_cart_item'),

    path('checkout/', checkout, name='checkout'),


]