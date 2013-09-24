#include "country.h"
#include "mediator.h"

int main(int argc, char *argv[]) {
	Mediator* m = new UN();
	Country* pJapan = new Japan();
	Country* pChina = new China();

	m->SetJanpa(pJapan);
	m->SetChina(pChina);

	pJapan->SetMediator(m);
	pChina->SetMediator(m);

	pJapan->SendMessage("钓鱼岛是日本的");
	pChina->SendMessage("钓鱼岛是中国的");

	delete pJapan;
	delete pChina;
	delete m;

	return 0;
}
