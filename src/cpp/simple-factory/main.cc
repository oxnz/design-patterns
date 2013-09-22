#include "nokia.h"
#include "factory.h"

int main(void) {
	Nokia *pNokia = Factory::CreateNokia("Lumia1020");
	pNokia->Call("123456790");

	delete pNokia;

	return 0;
}
