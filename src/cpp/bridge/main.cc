#include "bridge.h"

int main(void) {
	ConcreteImplementorA *pImplA = new ConcreteImplementorA();
	Abstraction *pAbstraction1 = new Abstraction(pImplA);
	pAbstraction1->Operation();
	ConcreteImplementorB *pImplB = new ConcreteImplementorB();
	Abstraction *pAbstraction2 = new Abstraction(pImplB);
	pAbstraction2->Operation();
	
	delete pAbstraction1;
	delete pAbstraction2;

	return 0;
}
