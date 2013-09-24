#ifndef EXPRESSION_H
#define EXPRESSION_H

#include <iostream>

class Context
{
public:
	Context(){}
	~Context(){}
};

class AbstractExpression
{
public:
	virtual void Interpret(const Context& c){}
	virtual ~AbstractExpression(){}
protected:
	AbstractExpression(){}
};

class TerminalExpression : public AbstractExpression
{
public:
	TerminalExpression(const std::string& statement);
	void Interpret(const Context& c);
private:
	std::string m_sStatement;
};

class NonterminalExpression : public AbstractExpression
{
public:
	NonterminalExpression(const std::string& statement);
	void Interpret(const Context& c);
	~NonterminalExpression(){}

private:
	std::string m_sStatement;
};

#endif//EXPRESSION_H
