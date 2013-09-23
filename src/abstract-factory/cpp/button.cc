#include <iostream>
#include "text.h"
#include "button.h"

void Button::SetText(Text *pText)
{
	this->m_pText = pText;
}

Button::~Button()
{
	delete m_pText;
}

WinButton::WinButton()
{
	std::cout << "Constructor of WinButton" << std::endl;
}

WinButton::~WinButton()
{
	std::cout << "Destructor of WinButton" << std::endl;
}

UnixButton::UnixButton()
{
	std::cout << "Constructor of UnixButton" << std::endl;
}

UnixButton::~UnixButton()
{
	std::cout << "Destructor of UnixButton" << std::endl;
}
