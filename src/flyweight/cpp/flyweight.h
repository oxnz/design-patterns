#ifndef FLYWEIGHT_H
#define FLYWEIGHT_H

#include <iostream>
#include <vector>

class Flyweight
{
public:
	virtual void Operation(const std::string& extrinsicState){}
	std::string GetIntrinsicState();
	virtual ~Flyweight(){}
protected:
	Flyweight(std::string intrinsicState);
private:
	std::string m_sIntrinsicState;
};

class ConcreteFlyweight : public Flyweight
{
public:
	ConcreteFlyweight(std::string intrinsicState);
	void Operation(const std::string& extrinsicState);
	~ConcreteFlyweight(){}
};

class FlyweightFactory
{
public:
	FlyweightFactory(){}
	Flyweight* GetFlyweight(const std::string& key);
	~FlyweightFactory(){}
private:
	std::vector<Flyweight*> m_vFlyweight;
};

#endif//FLYWEIGHT_H
