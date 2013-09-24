#include "mediator.h"
#include "country.h"

void UN::SetJanpa(Country* c)
{
	m_pJanpa = c;
}

void UN::SetChina(Country* c)
{
	m_pChina = c;
}

void UN::Send(std::string msg, Country* c)
{
	if (c == m_pJanpa)
		m_pChina->GetMessage(msg);
	else
		m_pJanpa->GetMessage(msg);
}
