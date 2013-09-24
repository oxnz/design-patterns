#include "subject.h"
#include "observer.h"

Subject::Subject()
{
	m_pObserverList = new std::list<Observer*>;
}

//注册观察者，这样通知者就能通知到观察者
void Subject::Attach(Observer* obv)
{
	m_pObserverList->push_front(obv);
}

//注销观察者，通知者不再通知观察者
void Subject::Detach(Observer* obv)
{
	if (m_pObserverList != NULL)
		m_pObserverList->remove(obv);
}

//通知操作，通知后对于每个注册过的观察者，将会调用自己的update方法
void Subject::Notify()
{
	std::list<Observer*>::iterator it = m_pObserverList->begin();
	for(; it != m_pObserverList->end(); ++it) {
		(*it)->Update(this);
	}
}

Subject::~Subject()
{
	std::cout << "Subject destructing ..." << std::endl;
	std::list<Observer*>::iterator it = m_pObserverList->begin();
	for(; it != m_pObserverList->end(); ++it) {
		m_pObserverList->remove(*it);
	}
	delete m_pObserverList;
	m_pObserverList = NULL;
}

DataSubject::DataSubject() : m_sState("\0") {}

std::string DataSubject::GetState() const
{
	return m_sState;
}

void DataSubject::SetState(const std::string& state)
{
	m_sState = state;
}

DataSubject::~DataSubject()
{
	std::cout << "DataSubject destructing ..." << std::endl;
}
