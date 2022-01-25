
from django.core.mail.message import EmailMessage
from django.http.response import HttpResponse
from django.shortcuts import render, redirect
from django.template.loader import render_to_string
from carts.models import CartItem
from store.models import Product

from orders.models import Order, OrderProduct
from .models import Payment
from django.conf import settings
from django.contrib import messages


def verify_payment(request, ref):
	payment = Payment.objects.get(ref=ref)
	print('This is the Payment ID ',payment)
	verified = payment.verify_payment()
	ver = Payment.objects.filter(user=request.user)
	# for txn in ver:
	# 	if txn.verified:
	# 		print(request.user.username, "Has successfully")
	if verified:
		messages.success(request, "verified successfully")

		order = Order.objects.get(user=request.user, is_ordered=False, paymentID = payment.id)
		order.is_ordered = True
		order.save()

	# Move the cart item to order product table
		cart_items = CartItem.objects.filter(user=request.user)
		print(cart_items)
		for item in cart_items:
			orderproduct = OrderProduct()
			orderproduct.order_id = order.id
			orderproduct.payment = payment
			orderproduct.user = request.user
			orderproduct.product_id = item.product_id
			orderproduct.quantity = item.quantity
			orderproduct.product_price = item.product.price
			orderproduct.ordered = True
			orderproduct.save()

			cart_item = CartItem.objects.get(id=item.id)
			product_variation = cart_item.variations.all()
			orderproduct = OrderProduct.objects.get(id=orderproduct.id)
			orderproduct.variation.set(product_variation)
			orderproduct.save()

	# Reduce the Quantity of the sold Product
			product = Product.objects.get(id=item.product_id)
			product.stock -= item.quantity
			product.save()
	# Clear the cart ITEMS
		CartItem.objects.filter(user=request.user).delete()


	# mine	



	# Send Order Received Email to the customer
		orderproduct=OrderProduct.objects.filter(user = request.user, order=order.id)
		
		# mine
		total=0
		quantity=0
		tax=0
		grand_total=0 

		
		for cart_item in orderproduct:
			total += (cart_item.product.price * cart_item.quantity)
			quantity += cart_item.quantity
		tax = (8 * total)/100
		grand_total = total + tax


		mail_subject = 'Thank You for your Order'
		message = render_to_string('orders/order_received_email.html', {
				'user' : request.user,
				'order' : order,
			})
		to_email = request.user.email
		send_email = EmailMessage(mail_subject, message, to=[to_email])
		send_email.send()



		params={
			'ordermain': order,
			'order': order.order_number,
			'order_date':payment.date_created ,
			'status': 'PAID' ,
			'orders' : orderproduct,
				'total' : total,
				'quantity' : quantity,
				'cart_items' : cart_items,
				'tax' : tax,
				'grand_total' : grand_total,
		}
		# return redirect('pay:order_complete')
		return render(request, 'orders/order_complete.html', params)
		
	else:
		messages.error(request, 'Verification Failed')
		return HttpResponse('<center><h2>This page is NOT verified</h2></center>')

	return redirect('/')

