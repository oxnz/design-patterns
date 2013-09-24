#ifndef ANIMAL_H
#define ANIMAL_H

class Animal
{
public:
	virtual void make_sound() = 0;
	virtual ~Animal(){}
};

class Dog : public Animal
{
	void make_sound();
};

class null_animal : public Animal
{
	void make_sound(){}
};

#endif//ANIMAL_H
