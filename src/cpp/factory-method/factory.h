#ifndef FACTORY_H
#define FACTORY_H

class Nokia;

class Factory
{
public:
	Factory(){}
	virtual Nokia* CreateNokia() = 0;
	virtual ~Factory(){}
};

#endif//FACTORY_H
