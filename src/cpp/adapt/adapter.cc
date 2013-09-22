#include <iostream>
#include "adapter.h"

void Adaptee::SpecialRequest()
{
	std::cout << "SpecialRequest of Adaptee" << std::endl;
}

Adapter::Adapter(Adaptee *pAdaptee)
: m_pAdaptee(pAdaptee) {}

Adapter::~Adapter()
{
	delete m_pAdaptee;
	m_pAdaptee = NULL;
}

void Adapter::Request()
{
	std::cout << "Request of Adapter" << std::endl;
	m_pAdaptee->SpecialRequest();
}
