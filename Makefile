dist:
	@sdir=`pwd`; sdir=$${sdir##*/};	\
	     cd .. && tar --exclude $${sdir}/.git	\
	     -czf $${sdir}.tar.gz $${sdir}
