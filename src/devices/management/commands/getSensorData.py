from django.core.management.base import BaseCommand, CommandError


class Command(BaseCommand):
    help = 'Gets sensor data for all devices. Should not be run often'

    def handle(self, *args, **options):
        self.stdout.write("Testing")

