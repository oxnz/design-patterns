#include "expression.h"

TerminalExpression::TerminalExpression(const std::string& statement)
{
	this->m_sStatement = statement;
}

void TerminalExpression::Interpret(const Context& c)
{
	std::cout << this->m_sStatement << " Terminal Expression..." << std::endl;
}

NonterminalExpression::NonterminalExpression(const std::string& statement)
{
	this->m_sStatement =statement;
}

void NonterminalExpression::Interpret(const Context& c)
{
	std::cout << this->m_sStatement << " Noneterminal Expression..." << std::endl;
}
