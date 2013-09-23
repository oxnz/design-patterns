#include "flyweight.h"

int main(void) {
	FlyweightFactory *fc = new FlyweightFactory();
	//不同的对象，享元工厂将会创建新的享元类
	Flyweight *fw1 = fc->GetFlyweight("Object A");
	Flyweight *fw2 = fc->GetFlyweight("Object B");
	//相同的对象，享元工厂将会使用一个已创建的享元类
	Flyweight *fw3 = fc->GetFlyweight("Object A");

	return 0;
}
