#ifndef MEDIATOR_H
#define MEDIATOR_H

#include <iostream>

class Country;
//抽象中介者
class Mediator
{
public:
	virtual void Send(std::string msg, Country* c){}
	virtual void SetJanpa(Country *c){}
	virtual void SetChina(Country *c){}
};

class UN : public Mediator
{
public:
	UN() : m_pJanpa(NULL), m_pChina(NULL) {}
	void SetJanpa(Country* c);
	void SetChina(Country* c);
	void Send(std::string msg, Country* c);
private:
	Country* m_pJanpa;
	Country* m_pChina;
};

#endif//MEDIATOR_H
