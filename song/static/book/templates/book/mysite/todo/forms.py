from django import forms

from .models import Todo

class TodoForm(forms.ModelForm):

    class Meta:
        model = Todo
        fields = ('title', 'description','completed')
        widgets = {
            'title': forms.TextInput(
				attrs={
                    'placeholder':'enter a todo',
					'class': 'form-control'
					}
				),
            'content': forms.Textarea(
				attrs={
                    'class': 'form-control'


					}
				),
			}

