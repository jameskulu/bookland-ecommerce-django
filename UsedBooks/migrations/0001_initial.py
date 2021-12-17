# Generated by Django 3.0.8 on 2020-07-05 15:38

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='UsedCategory',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=100)),
                ('image', models.ImageField(default='image_not_found.png', upload_to='categories')),
            ],
        ),
        migrations.CreateModel(
            name='UsedSubCategory',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=100)),
                ('category', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='UsedBooks.UsedCategory')),
            ],
        ),
        migrations.CreateModel(
            name='UsedProduct',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=150)),
                ('description', models.TextField()),
                ('price', models.IntegerField()),
                ('author', models.CharField(max_length=150)),
                ('image', models.ImageField(default='no_image_found.png', upload_to='products')),
                ('published_date', models.DateTimeField(auto_now_add=True, null=True)),
                ('subcategory', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='UsedBooks.UsedSubCategory')),
            ],
        ),
        migrations.CreateModel(
            name='UsedComment',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('content', models.CharField(max_length=160)),
                ('time_stamp', models.DateTimeField(auto_now_add=True)),
                ('product', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='UsedBooks.UsedProduct')),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
        ),
    ]
