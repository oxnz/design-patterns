#include <iostream>
#include "proxy.h"

RealSubject::RealSubject()
{
	std::cout << "Constructing a RealSubject" << std::endl;
}

void RealSubject::Request()
{
	std::cout << "Request by RealSubject" << std::endl;
}

Proxy::Proxy()
: m_pRealSubject(NULL)
{
	std::cout << "Constructing a Proxy" << std::endl;
}

Proxy::~Proxy()
{
	delete m_pRealSubject;
	m_pRealSubject = NULL;
}

void Proxy::Request()
{
	if (NULL == m_pRealSubject) {
		std::cout << "Request by Proxy" << std::endl;
		m_pRealSubject = new RealSubject();
	}
	m_pRealSubject->Request();
}
