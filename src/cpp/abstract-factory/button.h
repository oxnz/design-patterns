#ifndef BUTTON_H
#define BUTTON_H

class Text;

class Button
{
public:
	Button(){}
	virtual void SetText(Text *pText);
	virtual ~Button();
private:
	Text *m_pText;
};

class WinButton : public Button
{
public:
	WinButton();
	virtual ~WinButton();
};

class UnixButton : public Button
{
public:
	UnixButton();
	virtual ~UnixButton();
};

#endif//BUTTON_H
