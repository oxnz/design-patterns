#ifndef SEED_H
#define SEED_H

class Status;

class Seed
{
public:
	virtual void Accept(Status* status) = 0;
	virtual ~Seed(){}
protected:
	Seed(){}
};

class Seed_A : public Seed
{
public:
	Seed_A(){}
	void Accept(Status* status);
	~Seed_A(){}
};

class Seed_B : public Seed
{
public:
	Seed_B(){}
	void Accept(Status* status);
	~Seed_B(){}
};

#endif//SEED_H
