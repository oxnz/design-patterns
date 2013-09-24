#include "memento.h"

Memento::Memento(const std::string& state)
{
	m_sState = state;
}

void Memento::SetState(const std::string& state)
{
	m_sState = state;
}

std::string Memento::GetState() const
{
	return m_sState;
}
