#include "proxy.h"

int main(void) {
	Subject *pProxy = new Proxy();
	pProxy->Request();
	delete pProxy;
	return 0;
}
