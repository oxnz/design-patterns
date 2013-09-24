#include "originator.h"
#include "memento.h"

Originator::Originator()
: m_sState(""), m_pMemento(0) {}

Originator::Originator(const std::string& state)
: m_sState(state), m_pMemento(0) {}

Memento* Originator::CreateMemento()
{
	return new Memento(m_sState);
}

void Originator::RestoreToMemento(Memento* m)
{
	m_sState = m->GetState();
}

std::string Originator::GetState() const
{
	return m_sState;
}

void Originator::SetState(const std::string& state)
{
	m_sState = state;
}

void Originator::PrintState() const
{
	std::cout << m_sState << "......" << std::endl;
}
