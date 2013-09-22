#include "decorator.h"

int main(void) {
	// 初始化一个Component对象
	Component *pComponent = new ConcreteComponent();
	// 采用这个Component对象去初始化一个Decorator对象,
	// 　　// 这样就可以为这个Component对象动态添加职责
	Decorator *pDecorator = new ConcreteDecorator(pComponent);
	pDecorator->Operation();
	delete pDecorator;

	return 0;
}

