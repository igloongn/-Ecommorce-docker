from payments.models import Payment
from django.conf import settings
from django.http.response import HttpResponse
from django.shortcuts import redirect, render
from carts.models import CartItem
from orders.models import Order
from .forms import OrderForm
import datetime

# Create your views here.
def place_order(request, total=0, quantity=0):
    current_user = request.user
    # If cart count is less than or equal to zero then redirect back to store
    cart_items = CartItem.objects.filter(user=current_user)
    cart_count = cart_items.count()
    if cart_count <= 0:
        return redirect('store:store')
    grand_total = 0
    tax = 0
    for cart_item in cart_items:
        total += (cart_item.product.price * cart_item.quantity)
        quantity += cart_item.quantity
    tax = (2 * total)/100
    grand_total = total + tax

    if request.method == 'POST':
        form = OrderForm(request.POST)
        if form.is_valid():
            # This is to store all the billing information inside Order Table
            data = Order()
            data.user = current_user
            data.first_name = form.cleaned_data['first_name']
            data.last_name = form.cleaned_data['last_name']
            data.email = form.cleaned_data['email']
            data.phone_number = form.cleaned_data['phone_number']
            data.address_line = form.cleaned_data['address_line']
            data.order_note = form.cleaned_data['order_note']
            data.order_total =  grand_total
            data.tax =    tax
            data.ip = request.META.get('REMOTE_ADDR')
            data.save()
            # Generate Order Number 
            yr = int(datetime.date.today().strftime('%Y'))
            dt = int(datetime.date.today().strftime('%d'))
            mt = int(datetime.date.today().strftime('%m'))
            d  = datetime.date(yr, mt, dt)
            current_date = d.strftime('%Y%m%d')
            order_number = current_date + str(data.id)
            data.order_number = order_number
            data.save()

            amount = grand_total
            email = data.email

            pk = settings.PAYSTACK_PUBLIC_KEY

            payment = Payment.objects.create(
                    amount=amount, email=email, user=request.user
                    )
            payment.save()

            data.paymentID = payment.id
            data.save()

            print('This is payment id: ',payment.id)


            order = Order.objects.get(user=current_user, is_ordered=False, order_number=order_number)

            print('This is DATA ID: ',data.id)

            
            context={
                'order' : order,
                'cart_items' : cart_items,
                'grand_total' : grand_total,
                'tax' : tax,
                'total' : total , 
                'payment': payment,
                'field_values': request.POST,
                'paystack_pub_key': pk,
                'amount_value': payment.amount_value(),
            }
            return render(request, 'orders/payments.html', context)
            
    else:
        return redirect('carts:checkout')



def order_complete(request):

    
    params={

    }
    return render(request, 'orders/order_complete.html', params)
    

