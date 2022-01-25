from django.contrib import messages
from django.http.response import HttpResponse
from django.shortcuts import get_object_or_404, redirect, render
from django.urls import exceptions

from orders.models import OrderProduct
from carts.models import CartItem
from store.forms import ReviewForm
from .models import Product, ReviewRating
from category.models import Category
from carts.views import _cart_id
from django.core.paginator import EmptyPage, PageNotAnInteger, Paginator
from django.db.models import Q


# Create your views here.
def store(request, cs=None):
    categories = None
    products =None
    if cs != None:
        categories = get_object_or_404(Category, slug=cs)
        products = Product.objects.filter(category=categories, is_available=True)
                # This is for the paginator
        paginator = Paginator(products, 9)
        page = request.GET.get('p')
        paged_products = paginator.get_page(page)
        product_count = products.count()
        # print(categories)
    else:
        products = Product.objects.all().filter(is_available=True).order_by('id')
            # This is for the paginator
        paginator = Paginator(products, 9)
        page = request.GET.get('p')
        paged_products = paginator.get_page(page)
        product_count=products.count()

    mykeys = {
        'products' : paged_products ,
        'product_count' : product_count ,
        'categories' : categories ,
        'cs' : cs ,

    }
    return render(request, 'store/store.html', mykeys)

def product_detail(request, single):
    try:
        single_product = Product.objects.get(slug=single)
        in_cart = CartItem.objects.filter(cart__cart_id=_cart_id(request),product = single_product).exists()
        # return HttpResponse(in_cart)
    except Exception:
        raise Exception
    if request.user.is_authenticated:
        try:
            orderproduct= OrderProduct.objects.filter(user=request.user, product_id=single_product.id).exists()
        except OrderProduct.DoesNotExist:
            orderproduct = None
    else:
        orderproduct = None
    # Get the Reviews
    reviews = ReviewRating.objects.filter(product_id=single_product.id, status=True)

    params={
        'single_product':single_product,
        'in_cart':in_cart,
        'orderproduct':orderproduct,
        'reviews': reviews,

    }
    return render(request, 'product-detail.html', params)
   

def search(request):
    if 'keyword' in request.GET:
        keyword = request.GET['keyword']
        if keyword:
            products = Product.objects.order_by('-created_date').filter(Q(description__icontains=keyword) | Q(product_name__icontains=keyword) , is_available=True)
            product_count=products.count()

    params = {
        'products' : products,
        'product_count' : product_count,
        'keyword' : keyword,
    }
    return render(request, 'store/store.html', params)


def submit_review(request, product_id):
    url = request.META.get('HTTP_REFERER')
    if request.method == 'POST':
        try:
            reviews = ReviewRating.objects.get(user__id=request.user.id, product__id=product_id)
            form = ReviewForm(request.POST, instance=reviews)
            form.save()
            messages.success(request, 'Thank you! Your Your review has been Updated.')
            return redirect(url)
        except ReviewRating.DoesNotExist:
            form = ReviewForm(request.POST)
            if form.is_valid():
                data = ReviewRating()
                data.subject = form.cleaned_data['subject']
                data.review = form.cleaned_data['review']
                data.rating = form.cleaned_data['rating']
                data.ip = request.META.get('HTTP_REFERER')
                data.product_id = product_id
                data.user_id = request.user.id
                data.save()
                messages.success(request, 'Thank you! Your Your review has been Submitted.')
            return redirect(url)

    






