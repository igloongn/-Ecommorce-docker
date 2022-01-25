from django import forms
from .models import Order, OrderProduct


class OrderForm(forms.ModelForm):
    class Meta:
        model = Order
        # fields='__all__'
        fields = ['first_name', 'last_name', 'phone_number', 'email', 'address_line', 'order_note']
