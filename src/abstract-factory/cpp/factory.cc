#include <iostream>
#include "text.h"
#include "button.h"
#include "factory.h"

using namespace std;

WinFactory::WinFactory()
{
	cout << "Constructor of WinFactory" << endl;
}

WinFactory::~WinFactory()
{
	cout << "Destructor of WinFactory" << endl;
}

UnixFactory::UnixFactory()
{
	cout << "Constructor of UnixFactory" << endl;
}

UnixFactory::~UnixFactory()
{
	cout << "Destructor of WinFactory" << endl;
}

Button* WinFactory::CreateButton()
{
	return new WinButton();
}

Text* WinFactory::CreateText()
{
	return new WinText();
}

Button* UnixFactory::CreateButton()
{
	return new UnixButton();
}

Text* UnixFactory::CreateText()
{
	return new UnixText();
}
