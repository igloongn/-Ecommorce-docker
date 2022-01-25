from django.db import models
from django.db.models.fields import CharField

from accounts.models import Account
from store.models import Product, Variation
from payments.models import Payment
# Create your models here.



class Order(models.Model):
    STATUS = (
        ('New','New'),
        ('Accepted','Accepted'),
        ('Completed','Completed'),
        ('Cancelled','Cancelled'),
    )
    user = models.ForeignKey(Account, on_delete=models.CASCADE, null=True)
    paymentID = models.CharField(max_length=10, blank=True, null=True)
    order_number = models.CharField(max_length = 20)
    first_name = models.CharField(max_length = 50)
    last_name = models.CharField(max_length = 50)
    phone_number = models.CharField(max_length = 50)
    email = models.CharField(max_length = 50)
    address_line = models.CharField(max_length = 150)
    order_note = models.TextField(blank=True)
    order_total = models.FloatField()
    tax = models.FloatField()
    status = models.CharField(max_length = 50, choices=STATUS, default='New')
    ip = models.CharField(max_length=50, blank=True)
    is_ordered = models.BooleanField(default=False)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def full_name(self):
        return f'{self.first_name} {self.last_name}'
        

    def __str__(self):
        return self.order_number
        

class OrderProduct(models.Model):
    order = models.ForeignKey(Order, on_delete=models.CASCADE)
    payment = models.ForeignKey(Payment, on_delete=models.CASCADE, blank=True, null=True)
    user = models.ForeignKey(Account, on_delete=models.CASCADE)
    product = models.ForeignKey(Product, on_delete=models.CASCADE)
    # variation = models.ForeignKey(Variation, on_delete=models.CASCADE)
    variation = models.ManyToManyField(Variation, blank=True)

    # color = models.CharField(max_length = 50)
    # size = models.CharField(max_length = 50)
    quantity = models.IntegerField()
    product_price = models.FloatField()
    ordered = models.BooleanField(default=False)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    
    def __str__(self):
        return  f'verified: {self.payment.verified}, ordered: {self.ordered}'
    
    
    
    
    
    
    



