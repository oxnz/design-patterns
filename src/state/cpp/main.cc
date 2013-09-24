#include "state.h"

int main(int argc, char *argv[]) {
	State *pState = new InhaleState();	//初始状态
	Work *pWork = new Work(pState);

	for (int i = 1; i < 5; ++i) {
		pWork->SetStep(i);
		pWork->Operation();	//操作
	}

	delete pWork;

	return 0;
}
