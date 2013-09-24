#include "country.h"
#include "mediator.h"

void Japan::SetMediator(Mediator* m)
{
	m_pMediator = m;
}

void Japan::SendMessage(std::string msg)
{
	std::cout << "Japan Sent: " << msg << std::endl;
	m_pMediator->Send(msg, this);
}

void Japan::GetMessage(std::string msg)
{
	std::cout << "Japan Got: " << msg << std::endl;
}

void China::SetMediator(Mediator* m)
{
	m_pMediator = m;
}

void China::SendMessage(std::string msg)
{
	std::cout << "China Sent: " << msg << std::endl;
	m_pMediator->Send(msg, this);
}

void China::GetMessage(std::string msg)
{
	std::cout << "China Got: " << msg << std::endl;
}
