/*
 * Copyright (c) 2013 oxnz, All rights reserved
 */

#include <iostream>

class Singleton
{
public:
	static Singleton* GetInstance();	//工厂方法(用来获得实例)
	static void DelInstance();
	int getVar();
	void setVar(int);
private:
	// private constructor, prevent clients from creating a new Singleton
	Singleton();
	// prevent clients from copying a Singleton
	Singleton(const Singleton&) = delete;
	Singleton& operator=(const Singleton&) = delete;
	// prevent clients from deleting a Singleton
	virtual ~Singleton();
private:
	static Singleton* _instance;	// the one and only instance
	int var;	// member for test
};
