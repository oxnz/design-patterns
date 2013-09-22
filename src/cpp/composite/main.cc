#include "composite.h"

int main(void) {
	Leaf *pLeaf1 = new Leaf();
	Leaf *pLeaf2 = new Leaf();
	Composite *pComposite = new Composite();
	pComposite->Add(pLeaf1);
	pComposite->Add(pLeaf2);
	pComposite->Operation();
	pComposite->GetChild(2)->Operation();

	delete pComposite;

	return 0;
}
