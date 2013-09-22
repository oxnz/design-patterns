#ifndef NOKIA_H
#define NOKIA_H

#include <iostream>

class Nokia
{
public:
	virtual void Call(const std::string& phoneNumber) const;
	virtual ~Nokia(){}
};

class Lumia920 : public Nokia
{
public:
	virtual void Call(const std::string& phoneNumber) const;
};

class Lumia1020 : public Nokia
{
public:
	virtual void Call(const std::string& phoneNumber) const;
};

#endif//NOKIA_H
