from django import forms
from django.contrib.auth.models import User
from django.contrib.auth.forms import UserCreationForm


class SignupForm(UserCreationForm):
    first_name = forms.CharField(max_length=200, help_text='Required')
    last_name = forms.CharField(max_length=200, help_text='Required')
    email = forms.EmailField(max_length=200, help_text='Required')

    class Meta:
        model = User
        fields = ('first_name', 'last_name', 'username',
                  'email', 'password1', 'password2')

    def clean_email(self):
        email = self.cleaned_data.get('email')
        username = self.cleaned_data.get('username')
        if email and User.objects.filter(email=email).exclude(username=username).exists():
            raise forms.ValidationError(u'Email address must be unique.')
        return email
