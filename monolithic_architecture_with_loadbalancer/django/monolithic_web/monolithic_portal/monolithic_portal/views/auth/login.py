from django.http import HttpResponse
from django.shortcuts import render
from monolithic_portal.views.auth.forms.loginform import LoginForm

def index(request):
      form = LoginForm()
      if request.method == 'POST':
            form = LoginForm(request.POST)
            if form.is_valid():
                  return render(request, 'home.html')
            else:
                  print(f'ERRORS: {form.errors}')
                  return render(request, 'login.html', {"form": form})
      elif request.method == 'GET':
            return render(request, 'login.html', {"form": form})