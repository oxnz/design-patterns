#ifndef COMPOSITE_H
#define COMPOSITE_H

#include <list>

// 组合中的抽象基类
class Component
{
public:
	Component(){}
	virtual ~Component(){}
	// 纯虚函数,只提供接口,没有默认的实现
	virtual void Operation() = 0;
	// 虚函数,提供接口,有默认的实现就是什么都不做
	virtual void Add(Component *pChild);
	virtual void Remove(Component *pChild);
	virtual Component *GetChild(int nIndex);
};

// 派生自Component,是其中的叶子组件的基类
class Leaf : public Component
{
public:
	Leaf(){}
	virtual ~Leaf(){}
	virtual void Operation();
};

// 派生自Component,是其中的含有子件的组件的基类
class Composite : public Component
{
public:
	Composite(){}
	virtual ~Composite();
	virtual void Operation();
	virtual void Add(Component *pChild);
	virtual void Remove(Component *pChild);
	virtual Component *GetChild(int nIndex);
private:
	// 采用list容器去保存子组件
	std::list<Component*> m_ListOfComponent;
};

#endif//COMPOSITE_H
