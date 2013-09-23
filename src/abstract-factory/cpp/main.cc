#include "text.h"
#include "button.h"
#include "factory.h"

int main(void) {
	Factory *pWinFactory = new WinFactory();
	Text *pWinText = pWinFactory->CreateText();
	Button *pWinButton = pWinFactory->CreateButton();
	pWinButton->SetText(pWinText);

	delete pWinButton;

	Factory *pUnixFactory = new UnixFactory();
	Text *pUnixText = pUnixFactory->CreateText();
	Button *pUnixButton = pUnixFactory->CreateButton();
	pUnixButton->SetText(pUnixText);

	delete pUnixButton;

	return 0;
}
