#coding: utf-8

class KillVirus:
	def operation(self):
		print "killing virus"

class ZipFile:
	def operation(self):
		print "zipping"

class EncryptFile:
	def operation(self):
		print "encrypting"

# Facade
class Filesys:
	def __init__(self):
		self._kv = KillVirus()
		self._zf = ZipFile()
		self._ef = EncryptFile()

	def operation(self):
		"""Wrapped all details in this function"""
		[i.operation() for i in (self._kv, self._zf, self._ef)]

if __name__ == '__main__':
	fs = Filesys()
	fs.operation()
