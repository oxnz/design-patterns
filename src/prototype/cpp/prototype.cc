#include <iostream>
#include "prototype.h"

ConcretePrototype::ConcretePrototype(const ConcretePrototype& cp)
{
	std::cout << "ConcretePrototype copy constructor" << std::endl;
}

Prototype* ConcretePrototype::Clone() const
{
	std::cout << "ConcretePrototype Clone method" << std::endl;
	return new ConcretePrototype(*this);
}
