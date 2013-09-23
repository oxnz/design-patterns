#ifndef FACTORY_H
#define FACTORY_H

class Nokia;

class Factory
{
public:
	static Nokia* CreateNokia(const std::string& modelName);
};

#endif//FACTORY_H
