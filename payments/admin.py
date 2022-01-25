from django.contrib import admin
from .models import Payment


class PaymentAdmin(admin.ModelAdmin):
	list_display = ["id","verified", 'amount',  "date_created"]


admin.site.register(Payment, PaymentAdmin)
