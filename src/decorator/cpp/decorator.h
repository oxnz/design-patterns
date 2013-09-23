#ifndef DECORATOR_H
#define DECORATOR_H

// 抽象基类,定义一个对象接口,可以为这个接口动态的添加职责.
class Component
{
public:
	Component(){}
	virtual ~Component(){}
	// 纯虚函数,由派生类实现
	virtual void Operation() = 0;
};

// 抽象基类,维护一个指向Component对象的指针
class Decorator : public Component
{
public:
	Decorator(Component *pComponent)
	: m_pComponent(pComponent){}
	virtual ~Decorator();
protected:
	Component *m_pComponent;
};

// 派生自Component,在这里表示需要给它动态添加职责的类
class ConcreteComponent : public Component
{
public:
	ConcreteComponent(){}
	virtual ~ConcreteComponent(){}
	virtual void Operation();
};

// 派生自Decorator,这里代表为ConcreteComponent动态添加职责的类
class ConcreteDecorator : public Decorator
{
public:
	ConcreteDecorator(Component *pComponent)
	: Decorator(pComponent){}
	virtual ~ConcreteDecorator(){}
	virtual void Operation();
private:
	void AddedBehavior();
};
#endif//DECORATOR_H
