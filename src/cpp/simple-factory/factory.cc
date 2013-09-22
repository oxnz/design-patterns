#include "nokia.h"
#include "factory.h"

Nokia* Factory::CreateNokia(const std::string& modelName)
{
	if (modelName == "Lumia1020")
		return new Lumia1020();
	else if (modelName == "Lumia920")
		return new Lumia920();
	else
		return new Nokia();
}
