#!/usr/bin/env python
#-*- coding: utf-8 -*-

from work import Work

if __name__ == "__main__":
	work = Work()
	work.setHour(8)
	work.operate()

	work.setHour(11)
	work.operate()

	work.setHour(14)
	work.operate()

	work.setHour(19)
	work.operate()
