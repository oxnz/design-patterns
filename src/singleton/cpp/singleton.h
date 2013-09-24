/*
 * Copyright (c) 2013 oxnz, All rights reserved
 */

#include <iostream>

class Singleton
{
public:
	static Singleton* GetInstance();	//工厂方法(用来获得实例)
	int getVar();
	void setVar(int);
	virtual ~Singleton();
private:
	Singleton();	// private constructor
	static Singleton* _instance;	// the only-one instance
	int var;	// member for test
};
