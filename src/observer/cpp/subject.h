#ifndef SUBJECT_H
#define SUBJECT_H

#include <iostream>
#include <list>

class Observer;

class Subject
{
public:
	//注册观察者，这样通知者就能通知到观察者
	virtual void Attach(Observer*);
	virtual void Detach(Observer*);
	virtual void Notify();
	virtual void SetState(const std::string& state) = 0;
	virtual std::string GetState() const = 0;
	virtual ~Subject();
protected:
	Subject();
private:
	std::list<Observer*>* m_pObserverList;
};

class DataSubject : public Subject
{
public:
	DataSubject();
	std::string GetState() const;
	void SetState(const std::string& state);
	virtual ~DataSubject();
private:
	std::string m_sState;
};

#endif//SUBJECT_H
