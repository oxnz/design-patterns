#include <iostream>
#include "handler.h"

Handler::Handler() : m_pSuccessor(NULL) {}

void Handler::SetSuccessor(Handler *succ)
{
	this->m_pSuccessor = succ;
}

Handler* Handler::GetSuccessor() const
{
	return m_pSuccessor;
}

Handler::~Handler()
{
	delete m_pSuccessor;
}

void ConcreteHandlerA::HandleRequest(int request)
{
	if (request >= 0 && request < 500) {
		std::cout << "ConcreteHandlerA deal with: " << request << std::endl;
	}
	else if (this->GetSuccessor() != NULL) {
		this->GetSuccessor()->HandleRequest(request);
	}
	else
	{
		std::cout << "Can't deal with: " << request << std::endl;
	}
}

void ConcreteHandlerB::HandleRequest(int request)
{
	if (request >= 500 && request < 1000) {
		std::cout << "ConcreteHandlerB deal with: " << request << std::endl;
	}
	else if (this->GetSuccessor() != NULL) {
		this->GetSuccessor()->HandleRequest(request);
	}
	else
	{
		std::cout << "Can't deal with: " << request << std::endl;
	}
}

void ConcreteHandlerC::HandleRequest(int request)
{
	if (request >= 1000 && request < 2000) {
		std::cout << "ConcreteHandlerC deal with: " << request << std::endl;
	}
	else if (this->GetSuccessor() != NULL) {
		this->GetSuccessor()->HandleRequest(request);
	}
	else
	{
		std::cout << "Can't deal with: " << request << std::endl;
	}
}
