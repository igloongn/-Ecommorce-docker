# Generated by Django 4.0 on 2022-01-05 18:55

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('orders', '0004_alter_order_payment_alter_orderproduct_payment_and_more'),
    ]

    operations = [
        migrations.RenameField(
            model_name='order',
            old_name='payment',
            new_name='paymentID',
        ),
    ]
