from django.shortcuts import render
from store.models import Product
def home(request):
    products = Product.objects.filter(is_available=True)
    mykeys={
        'products' : products
    }
    return render(request, 'home.html', mykeys)
    

def test(request):

    params = {

    }
    return render(request, 'place-order.html', params)
    # return render(request, 'store/checkout.html', params)
    
  



