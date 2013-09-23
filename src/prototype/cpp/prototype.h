#ifndef PROTOTYPE_H
#define PROTOTYPE_H

class Prototype
{
public:
	virtual ~Prototype(){}
	virtual Prototype* Clone() const = 0;
};

class ConcretePrototype : public Prototype
{
public:
	ConcretePrototype(){}
	ConcretePrototype(const ConcretePrototype& cp);
	Prototype* Clone() const;
};

#endif//PROTOTYPE_H
