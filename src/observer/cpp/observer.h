#ifndef OBSERVER_H
#define OBSERVER_H

#include <iostream>

class Subject;

//观察者基类
class Observer
{
public:
	virtual void Update(Subject*) = 0;
	virtual void PrintInfo() const = 0;
	virtual ~Observer();
protected:
	Observer();
protected:
	std::string m_sState;
};

//数据表格观察者
class SheetObserver : public Observer
{
public:
	//构造函数里，把自己注册到通知者里
	SheetObserver(Subject*);
	virtual Subject* GetSubject() const;
	//更新操作
	void Update(Subject*);
	void PrintInfo() const;
	virtual ~SheetObserver();
private:
	Subject* m_pSubject;
};

class ChatObserver : public Observer
{
public:
	ChatObserver(Subject*);
	virtual Subject* GetSubject() const;
	void Update(Subject*);
	void PrintInfo() const;
	virtual ~ChatObserver();
private:
	Subject* m_pSubject;
};

#endif//OBSERVER_H
