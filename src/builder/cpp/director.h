#ifndef DIRECTOR_H
#define DIRECTOR_H

class Builder;

class Director
{
private:
	Builder *m_pBuilder;
public:
	Director(Builder *builder);
	void Create();
};

#endif//DIRECTOR_H
