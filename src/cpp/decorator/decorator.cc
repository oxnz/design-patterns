#include <iostream>
#include "decorator.h"

Decorator::~Decorator()
{
	delete m_pComponent;
	m_pComponent = NULL;
}

void ConcreteComponent::Operation()
{
	std::cout << "Operation of ConcreteComponent" << std::endl;
}

void ConcreteDecorator::Operation()
{
	m_pComponent->Operation();
	AddedBehavior();
}

void ConcreteDecorator::AddedBehavior()
{
	std::cout << "AddedBehavior of ConcreteDecorator" << std::endl;
}
