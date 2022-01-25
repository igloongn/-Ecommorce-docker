from django.urls import path, re_path

from orders.views import place_order, order_complete


app_name = 'orders'

urlpatterns = [
    path('place_order/', place_order, name='place_order'),
    path('order_complete/', order_complete , name='order_complete'),


]