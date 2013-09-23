#include "handler.h"

int main() {
	Handler *h1 = new ConcreteHandlerA();
	Handler *h2 = new ConcreteHandlerB();
	Handler *h3 = new ConcreteHandlerC();

	//设置其上级
	h1->SetSuccessor(h2);
	h2->SetSuccessor(h3);

	h1->HandleRequest(300);
	h1->HandleRequest(600);
	h1->HandleRequest(1500);
	h1->HandleRequest(3000);

	delete h1;

	return 0;
}
