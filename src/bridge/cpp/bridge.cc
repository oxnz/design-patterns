#include <iostream>
#include "bridge.h"

void ConcreteImplementorA::OperationImpl()
{
	std::cout << "Implementation by ConcreteImplementorA" << std::endl;
}

void ConcreteImplementorB::OperationImpl()
{
	std::cout << "Implementation by ConcreteImplementorB" << std::endl;
}

Abstraction::Abstraction(Implementor *pImplementor)
: m_pImplementor(pImplementor){}

Abstraction::~Abstraction()
{
	delete m_pImplementor;
	m_pImplementor = NULL;
}

void Abstraction::Operation()
{
	m_pImplementor->OperationImpl();
}

