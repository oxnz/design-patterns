#ifndef CLASS_H
#define CLASS_H

//抽象基类，实现了一个模板方法
class AbstractClass
{
public:
	//模板方法，只在抽象基类中实现
	void TemplateMethod();
	virtual ~AbstractClass(){}
protected:
	virtual void PrimitiveOperation1() = 0;
	virtual void PrimitiveOperation2() = 0;
	AbstractClass(){}
};

//具体子类，实现操作的特定细节
class ConcreteClass1 : public AbstractClass
{
public:
	ConcreteClass1(){}
	~ConcreteClass1(){}
protected:
	void PrimitiveOperation1();
	void PrimitiveOperation2();
};

//具体子类，实现操作的特定细节
class ConcreteClass2 : public AbstractClass
{
public:
	ConcreteClass2(){}
	~ConcreteClass2(){}
protected:
	void PrimitiveOperation1();
	void PrimitiveOperation2();
};

#endif//CLASS_H
