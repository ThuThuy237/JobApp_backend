# Generated by Django 3.2.6 on 2021-12-04 08:18

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('jobReferralApp', '0009_auto_20211022_2336'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='jobapplicant',
            options={'ordering': ['user']},
        ),
        migrations.AlterModelOptions(
            name='user',
            options={'ordering': ['id']},
        ),
        migrations.AddField(
            model_name='jobapplicant',
            name='address',
            field=models.CharField(default='address', max_length=255),
            preserve_default=False,
        ),
        migrations.AlterField(
            model_name='jobapplicant',
            name='user',
            field=models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, primary_key=True, related_name='jobApplicant', serialize=False, to=settings.AUTH_USER_MODEL),
        ),
        migrations.AlterField(
            model_name='post',
            name='salary',
            field=models.IntegerField(default=0, null=True),
        ),
    ]
