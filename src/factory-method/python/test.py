#coding: utf-8

class EnglishGetter:
	'''simple echoes the msg'''
	def get(self, msg):
		return unicode(msg)

class JapaneseGetter:
	'''A simple localizer a la gettext'''

	def __init__(self):
		self.trans = dict(dog="犬", cat="猫")
	
	def get(self, msg):
		'''we'll punt if we don't have a traslation'''
		try:
			return unicode(self.trans[msg], "utf-8")
		except KeyError:
			return unicode(msg)

def get_localizer(language="English"):
	'''The factory method'''
	languages = dict(English=EnglishGetter, Japanese=JapaneseGetter)
	return languages[language]()

# Create our localizers
e, j = get_localizer('English'), get_localizer('Japanese')

# Localize some text
for msg in "dog parrot cat".split():
	print e.get(msg), j.get(msg)
