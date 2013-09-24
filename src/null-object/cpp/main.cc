#include "animal.h"

int main(int argc, char *argv[]) {
	Animal *pDog = new Dog();
	pDog->make_sound();

	delete pDog;

	return 0;
}
