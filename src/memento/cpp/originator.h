#ifndef ORIGINATOR_H
#define ORIGINATOR_H

#include <iostream>

class Memento;

class Originator
{
public:
	Originator();
	Originator(const std::string& state);
	Memento* CreateMemento();
	void RestoreToMemento(Memento* m);
	std::string GetState() const;
	void SetState(const std::string& state);
	void PrintState() const;
private:
	std::string m_sState;
	Memento* m_pMemento;
};

#endif//ORIGINATOR_H
