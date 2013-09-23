#include "nokia.h"

void Nokia::Call(const std::string& phoneNumber) const
{
	std::cout << "Using a NOKIA Calling " << phoneNumber << std::endl;
}

void Lumia920::Call(const std::string& phoneNumber) const
{
	std::cout << "Using a Lumia 920 Calling " << phoneNumber << std::endl;
}

void Lumia1020::Call(const std::string& phoneNumber) const
{
	std::cout << "Using a Lumia 1020 Calling " << phoneNumber << std::endl;
}
