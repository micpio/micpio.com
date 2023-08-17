from django import forms

from .models import News

class NewsForm(forms.ModelForm):

    class Meta:
        model = News
        fields = ('journalist', 'story','bi_line')
