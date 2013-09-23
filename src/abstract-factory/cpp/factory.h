#ifndef FACTORY_H
#define FACTORY_H

class Text;
class Button;

class Factory
{
public:
	Factory(){}
	virtual Button* CreateButton() = 0;
	virtual Text* CreateText() = 0;
	virtual ~Factory(){}
};

class WinFactory : public Factory
{
public:
	WinFactory();
	Button* CreateButton();
	Text* CreateText();
	virtual ~WinFactory();
};

class UnixFactory : public Factory
{
public:
	UnixFactory();
	Button* CreateButton();
	Text* CreateText();
	virtual ~UnixFactory();
};

#endif//FACTORY_H
