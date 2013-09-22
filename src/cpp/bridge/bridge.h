#ifndef BRIDGE_H
#define BRIDGE_H

class Implementor;
// 维护一个Implementor类的指针
class Abstraction
{
public:
	Abstraction(Implementor *pImplementor);
	virtual ~Abstraction();
	void Operation();
protected:
	Implementor *m_pImplementor;
};

// 为实现Abstraction定义的抽象基类,定义了实现的接口函数
class Implementor
{
public:
	Implementor(){}
	virtual ~Implementor(){}
	virtual void OperationImpl() = 0;
};

// 继承自Implementor,是Implementor的不同实现之一
class ConcreteImplementorA : public Implementor
{
public:
	ConcreteImplementorA(){}
	virtual ~ConcreteImplementorA(){}
	virtual void OperationImpl();
};

// 继承自Implementor,是Implementor的不同实现之一
class ConcreteImplementorB : public Implementor
{
public:
	ConcreteImplementorB(){}
	virtual ~ConcreteImplementorB(){}
	virtual void OperationImpl();
};

#endif//BRIDGE_H
