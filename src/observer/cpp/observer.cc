#include "observer.h"
#include "subject.h"

Observer::Observer() : m_sState("\0") {}

Observer::~Observer()
{
	std::cout << "Observer destructing ..." << std::endl;
}

SheetObserver::SheetObserver(Subject* sub) : m_pSubject(sub)
{
	m_pSubject->Attach(this);
}

Subject* SheetObserver::GetSubject() const
{
	return m_pSubject;
}

void SheetObserver::Update(Subject* sub)
{
	m_sState = sub->GetState();	//具体的数据可以从Subject这个通知者中取
	PrintInfo();
}

void SheetObserver::PrintInfo() const
{
	std::cout << "Sheet Observer ..." << m_pSubject->GetState() << std::endl;
}

SheetObserver::~SheetObserver()
{
	std::cout << "SheetObserver destructing ..." << std::endl;
	m_pSubject->Detach(this);
	m_pSubject = 0;
}

ChatObserver::ChatObserver(Subject* sub) : m_pSubject(sub)
{
	m_pSubject->Attach(this);
}

Subject* ChatObserver::GetSubject() const
{
	return m_pSubject;
}

void ChatObserver::Update(Subject* sub)
{
	m_sState = sub->GetState();
	PrintInfo();
}

void ChatObserver::PrintInfo() const
{
	std::cout << "Chat Observer ..." << m_pSubject->GetState() << std::endl;
}

ChatObserver::~ChatObserver()
{
	std::cout << "ChatObserver destructing ..." << std::endl;
	m_pSubject->Detach(this);
	m_pSubject = 0;
}
