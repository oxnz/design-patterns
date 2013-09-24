#ifndef STATUS_H
#define STATUS_H

class Seed;

class Status
{
public:
	virtual void VisitSeed_A(Seed* elm){}
	virtual void VisitSeed_B(Seed* elm){}
	virtual ~Status(){}
protected:
	Status(){}
};

class Rain_Status : public Status
{
public:
	Rain_Status(){}
	virtual ~Rain_Status(){}
	virtual void VisitSeed_A(Seed* elm);
	virtual void VisitSeed_B(Seed* elm);
};

class Sun_Status : public Status
{
public:
	Sun_Status(){}
	virtual ~Sun_Status(){}
	virtual void VisitSeed_A(Seed* elm);
	virtual void VisitSeed_B(Seed* elm);
};

#endif//STATUS_H
