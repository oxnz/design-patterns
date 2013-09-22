#ifndef LUMIA920FACTORY_H
#define LUMIA920FACTORY_H

#include "factory.h"

class Nokia;

class Lumia920Factory : public Factory
{
public:
	virtual Nokia* CreateNokia();
};

#endif//LUMIA920FACTORY_H
