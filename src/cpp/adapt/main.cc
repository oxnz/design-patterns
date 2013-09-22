#include "adapter.h"

int main(void) {
	Adaptee *pAdaptee = new Adaptee();
	Target *pTarget = new Adapter(pAdaptee);
	pTarget->Request();

	delete pTarget;

	return 0;
}
