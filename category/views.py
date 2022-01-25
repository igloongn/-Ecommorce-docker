from django.shortcuts import redirect, render

# Create your views here.
def index(req):
    return redirect('accounts:login')
    
def start(request):

    keys={

    }
    return render(request, 'register.html', keys)
    
    


