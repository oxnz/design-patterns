#include "nokia.h"
#include "lumia920factory.h"

Nokia* Lumia920Factory::CreateNokia()
{
	return new Lumia920();
}
