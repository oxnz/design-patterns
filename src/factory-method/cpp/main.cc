#include "nokia.h"
#include "lumia920factory.h"

int main(void) {
	Factory* pFactory = new Lumia920Factory();
	Nokia* pNokia = pFactory->CreateNokia();
	pNokia->Call("12345680");

	return 0;
}
