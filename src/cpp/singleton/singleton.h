/*
 * Copyright (c) 2013 oxnz, All rights reserved
 */

#include <iostream>

class Singleton
{
private:
	Singleton();	// private constructor
	static Singleton *instance;	// the only-one instance
	int var;	// member for test
public:
	static Singleton* GetInstance();	//工厂方法(用来获得实例)
	int getVar();
	void setVar(int);
	virtual ~Singleton();
};
