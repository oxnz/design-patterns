#include <list>
#include "expression.h"

int main(int argc, char *argv[]) {
	Context* c = new Context();

	std::list<AbstractExpression*> pList;
	pList.push_back(new TerminalExpression("FI"));
	pList.push_back(new NonterminalExpression("IF"));
	pList.push_back(new TerminalExpression("DONE"));
	pList.push_back(new NonterminalExpression("DO"));

	std::list<AbstractExpression*>::iterator it = pList.begin();
	for(; it != pList.end(); ++it) {
		(*it)->Interpret(*c);
	}

	return 0;
}
