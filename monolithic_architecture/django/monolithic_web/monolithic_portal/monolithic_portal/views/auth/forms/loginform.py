from django import forms

from django import forms

class LoginForm(forms.Form):
    username = forms.CharField(label="USERNAME", required=True)
    password = forms.CharField(label="PASSWORD", widget=forms.PasswordInput(), required=True)