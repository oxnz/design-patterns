#include <iostream>
#include "seed.h"
#include "status.h"

void Rain_Status::VisitSeed_A(Seed* elm)
{
	std::cout << "Rain will visit Seed A..." << std::endl;
}

void Rain_Status::VisitSeed_B(Seed* elm)
{
	std::cout << "Rain will visit Seed B..." << std::endl;
}

void Sun_Status::VisitSeed_A(Seed* elm)
{
	std::cout << "Sun will visit Seed A..." << std::endl;
}

void Sun_Status::VisitSeed_B(Seed* elm)
{
	std::cout << "Sun will visit Seed B..." << std::endl;
}
