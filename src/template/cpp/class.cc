#include <iostream>
#include "class.h"

void AbstractClass::TemplateMethod()
{
	PrimitiveOperation1();
	PrimitiveOperation2();
}

void ConcreteClass1::PrimitiveOperation1()
{
	std::cout << "ConcreteClass1->PrimitiveOperation1" << std::endl;
}

void ConcreteClass1::PrimitiveOperation2()
{
	std::cout << "ConcreteClass1->PrimitiveOperation2" << std::endl;
}

void ConcreteClass2::PrimitiveOperation1()
{
	std::cout << "ConcreteClass2->PrimitiveOperation1" << std::endl;
}

void ConcreteClass2::PrimitiveOperation2()
{
	std::cout << "ConcreteClass2->PrimitiveOperation2" << std::endl;
}
