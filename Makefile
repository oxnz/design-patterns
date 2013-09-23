dist:
	make clean
	@sdir=`pwd`; sdir=$${sdir##*/};	\
	     cd .. && tar --exclude $${sdir}/.git	\
	     -czf $${sdir}.tar.gz $${sdir}

clean:
	$(MAKE) -C src clean

.PHONY: dist clean
