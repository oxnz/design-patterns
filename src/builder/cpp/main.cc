#include "builder.h"
#include "director.h"

int main(void) {
	KFCBuilder kfc;
	Director director(&kfc);
	director.Create();

	return 0;
}
