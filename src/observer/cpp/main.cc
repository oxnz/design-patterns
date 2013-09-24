#include "observer.h"
#include "subject.h"

int main(int argc, char *argv[]) {
	DataSubject* s = new DataSubject();	//数据通知者

	Observer* o1 = new SheetObserver(s);	//表格观察者
	Observer* o2 = new ChatObserver(s);	//图表观察者

	s->SetState("old data");	//数据发生变化
	s->Notify();	//通知者下发通知
	s->SetState("new data");
	s->Notify();

	o1->Update(s);	//也可以由观察者自己调用更新函数

	delete o1;
	delete o2;
	delete s;

	return 0;
}
