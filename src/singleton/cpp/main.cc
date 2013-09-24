#include "singleton.h"

int main(void) {
	Singleton *ton1 = Singleton::GetInstance();
	Singleton *ton2 = Singleton::GetInstance();

	if (ton1 == ton2)
		std::cout << "ton1 == ton2" << std::endl;

	std::cout << "ton1->var=" << ton1->getVar() << std::endl;
	std::cout << "ton2->var=" << ton2->getVar() << std::endl;

	ton1->setVar(150);

	std::cout << "ton1->var=" << ton1->getVar() << std::endl;
	std::cout << "ton2->var=" << ton2->getVar() << std::endl;

	delete Singleton::GetInstance(); //必须显式地删除

	return 0;
}
