#include <iostream>
#include "text.h"

Text::~Text()
{
	std::cout << "Destruct a Text" << std::endl;
}

WinText::~WinText()
{
	std::cout << "Destruct a WinText" << std::endl;
}

UnixText::~UnixText()
{
	std::cout << "Destruct a UnixText" << std::endl;
}
