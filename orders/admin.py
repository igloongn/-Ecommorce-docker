from django.contrib import admin

from orders.models import Order, OrderProduct

# This is for Tabline Model in the database
class OrderProductInline(admin.TabularInline):
    model = OrderProduct
    extra = 0
    readonly_fields = ('payment', 'user', 'product', 'variation', 'quantity', 'product_price', 'ordered' )


class OrderAdmin(admin.ModelAdmin):
    list_display = ('is_ordered', 'id', 'order_number','first_name', 'paymentID', 'order_total')
    list_filter = ['status', 'is_ordered']
    search_fields = ['order_number', 'first_name', 'last_name', 'phone_number', 'email']
    list_per_page = 10

    list_display_links = ('order_number',)
    readonly_fields = ('order_number',)
    inlines = [OrderProductInline] 


class OrderProductAdmin(admin.ModelAdmin):
    list_display = ('ordered', 'user', 'product', 'quantity', 'product_price')
    list_per_page = 10

    list_display_links = ('user',)
    readonly_fields = ('ordered',)



# Register your models here.

admin.site.register(Order, OrderAdmin)
admin.site.register(OrderProduct, OrderProductAdmin)
# admin.site.register(Payment)

