
from django.urls import path
from . import views

app_name = 'payments'
urlpatterns = [

	path('payments/<str:ref>/', views.verify_payment, name="verify-payment"),
]
