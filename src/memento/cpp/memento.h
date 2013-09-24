#include <iostream>
#ifndef MEMENTO_H
#define MEMENTO_H

class Originator;

class Memento
{
public:
private:
	friend class Originator;
	Memento(){}
	Memento(const std::string& state);
	void SetState(const std::string& state);
	std::string GetState() const;
private:
	std::string m_sState;
};

#endif//MEMENTO_H
