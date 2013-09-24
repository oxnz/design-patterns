#include <iostream>
#include "seed.h"
#include "status.h"

void Seed_A::Accept(Status* status)
{
	status->VisitSeed_A(this);
}

void Seed_B::Accept(Status* status)
{
	status->VisitSeed_B(this);
}
