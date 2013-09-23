#ifndef PROXY_H
#define PROXY_H

// 定义了Proxy和RealSubject的公有接口,
// 这样就可以在任何需要使用到RealSubject的地方都使用Proxy.
class Subject
{
public:
	Subject(){}
	virtual ~Subject(){}
	virtual void Request() = 0;
};

class RealSubject : public Subject
{
public:
	RealSubject();
	virtual ~RealSubject(){}
	virtual void Request();
};

// 代理类,含有一个指向RealSubject对象的指针
class Proxy : public Subject
{
public:
	Proxy();
	virtual ~Proxy();
	virtual void Request();
private:
	RealSubject *m_pRealSubject;
};

#endif//PROXY_H
