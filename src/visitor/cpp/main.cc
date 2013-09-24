#include <list>
#include "seed.h"
#include "status.h"

//对象结构类,为了对比不同种子
class ObjectStructure
{
private:
	std::list<Seed*> m_lSeed;
public:
	void Attach(Seed* seed)
	{
		m_lSeed.push_back(seed);
	}

	void Detach(Seed* seed)
	{
		m_lSeed.remove(seed);
	}

	void Display(Status* status)
	{
		std::list<Seed*>::iterator it = m_lSeed.begin();
		for (; it != m_lSeed.end(); ++it) {
			(*it)->Accept(status);
		}
	}
};

int main(int argc, char *argv[]) {
	ObjectStructure obj;

	//加入要对比的两个种子
	obj.Attach(new Seed_A());
	obj.Attach(new Seed_B());

	//查看各种状态下两个种子的情况
	obj.Display(new Rain_Status());
	obj.Display(new Sun_Status());

	return 0;
}
