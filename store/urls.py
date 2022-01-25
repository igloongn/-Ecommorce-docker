from django.urls import path, re_path
from .views import product_detail, store, search, submit_review

app_name = 'store'

urlpatterns = [
    path("", store, name= 'store'),
    path('search/', search, name= 'search'),
    path('<slug:cs>/', store,name= 'products_category'),
    path('details/<slug:single>/',product_detail,name= 'product_details'),
    path('submit_review/<int:product_id>/', submit_review, name='submit_review' ),
    

]