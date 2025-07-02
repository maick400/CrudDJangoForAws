from django import forms
from .models import Producto

class ProductoForm(forms.ModelForm):
    class Meta:
        model = Producto
        fields = ['descripcion', 'precio', 'stock']
        widgets = {
            'descripcion': forms.TextInput(attrs={'class': 'border border-gray-300 p-2 rounded w-full', 'placeholder': 'Descripción del producto'}),
            'precio': forms.NumberInput(attrs={'class': 'border border-green-300 p-2 rounded w-full', 'placeholder': 'Precio'}),
            'stock': forms.NumberInput(attrs={'class': 'border border-blue-300 p-2 rounded w-full', 'placeholder': 'Cantidad en stock'}),
        }
        