#include "flyweight.h"

std::string Flyweight::GetIntrinsicState()
{
	return this->m_sIntrinsicState;
}

Flyweight::Flyweight(std::string intrinsicState)
{
	this->m_sIntrinsicState = intrinsicState;
}

ConcreteFlyweight::ConcreteFlyweight(std::string intrinsicState)
: Flyweight(intrinsicState)
{
	std::cout << "ConcreteFlyweight Build : " << intrinsicState << std::endl;
}

void ConcreteFlyweight::Operation(const std::string& extrinsicState)
{
	std::cout << "Inner[" << this->GetIntrinsicState() << "]" << std::endl;
}

Flyweight* FlyweightFactory::GetFlyweight(const std::string& key)
{
	std::vector<Flyweight*>::iterator it = m_vFlyweight.begin();
	for (; it != m_vFlyweight.end(); it++) {
		if ((*it)->GetIntrinsicState() == key) {
			std::cout << "already created by users..." << std::endl;
			return *it;
		}
	}

	Flyweight *fn = new ConcreteFlyweight(key);
	m_vFlyweight.push_back(fn);
	return fn;
}

