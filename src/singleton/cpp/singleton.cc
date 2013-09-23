#include "singleton.h"

Singleton::Singleton()
{
	this->var = 20;
	std::cout << "Singleton Constructor" << std::endl;
}

Singleton::~Singleton()
{
	std::cout << "Singleton Destructor" << std::endl;
	// delete instance;
}

// Init static member

/* Singleton* Singleton::GetInstance()
{
	if (NULL == instance)
		instance = new Singleton();
	return instance;
} */

Singleton* Singleton::instance = new Singleton;

Singleton* Singleton::GetInstance()
{
	return instance;
}

// setter & getter

int Singleton::getVar()
{
	return this->var;
}

void Singleton::setVar(int var)
{
	this->var = var;
}
