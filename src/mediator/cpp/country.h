#ifndef COUNTRY_H
#define COUNTRY_H

#include <iostream>

class Mediator;

class Country
{
public:
	virtual void SetMediator(Mediator* m){}
	virtual void SendMessage(std::string msg){}
	virtual void GetMessage(std::string msg){}
protected:
	Mediator* m_pMediator;
};

class Japan : public Country
{
public:
	void SetMediator(Mediator* m);
	void SendMessage(std::string msg);
	void GetMessage(std::string msg);
};

class China : public Country
{
public:
	void SetMediator(Mediator* m);
	void SendMessage(std::string msg);
	void GetMessage(std::string msg);
};

#endif//COUNTRY_H
