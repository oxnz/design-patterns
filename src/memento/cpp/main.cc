#include "memento.h"
#include "originator.h"

int main(int argc, char *argv[]) {
	Originator* o = new Originator();
	o->SetState("old");	//备忘以前的状态
	o->PrintState();

	Memento* m = o->CreateMemento();	//创建一个备忘录
	o->SetState("new");	//修改状态
	o->PrintState();

	o->RestoreToMemento(m);	//恢复修改前的状态 
	o->PrintState();

	return 0;
}
