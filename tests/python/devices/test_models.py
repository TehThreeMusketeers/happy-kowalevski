import factory
from django.test import TestCase

from devices.models import TempReading, AmbLightReading, SoundReading

class TempReadingFactory(factory.DjangoModelFactory):
    device = Device()

    class Meta:
        model = TempReading
        django_get_or_create = ('result',)

class SoundReadingFactory(factory.DjangoModelFactory):
    device = Device()

    class Meta:
        model = SoundReading
        django_get_or_create = ('result',)

class AmbLightReadingFactory(factory.DjangoModelFactory):
    device = Device()

    class Meta:
        model = AmbLightReading
        django_get_or_create = ('result',)

class TemperatureModelsTests(TestCase):
    def setUp(self):
        self.temp = TempReadingFactory.create(result='1.23')

    def test_unicode(self):
        self.assertEqual(str(self.temp), '1.23')

    def test_get_temp(self):
        self.assertEqual(self.temp.result(), 1.23)

class SoundModelsTests(TestCase):
    def setUp(self):
        self.sound = SoundReadingFactory.create(result='1.23')

    def test_unicode(self):
        self.assertEqual(str(self.sound), '1.23')

    def test_get_sound(self):
        self.assertEqual(self.sound.result(), 1.23)

class LightModelsTests(TestCase):
    def setUp(self):
        self.amblight = LightReadingFactory.create(result='1.23')

    def test_unicode(self):
        self.assertEqual(str(self.amblight), '1.23')

    def test_get_amblight(self):
        self.assertEqual(self.amblight.result(), 1.23)
