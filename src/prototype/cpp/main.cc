#include "prototype.h"

int main(void) {
	//拷贝构造操作  
	ConcretePrototype p1;
	ConcretePrototype p2 = p1;

	//克隆操作
	Prototype* p3 = new ConcretePrototype();
	Prototype* p4 = p3->Clone();

	return 0;
}
