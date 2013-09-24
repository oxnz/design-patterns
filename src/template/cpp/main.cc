#include "class.h"

int main(int argc, char *argv[]) {
	AbstractClass* c1 = new ConcreteClass1();
	AbstractClass* c2 = new ConcreteClass2();

	c1->TemplateMethod();
	c2->TemplateMethod();

	delete c1;
	delete c2;

	return 0;
}
