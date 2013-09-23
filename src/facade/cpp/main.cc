#include <iostream>

class KillVirus
{
public:
	void Operation1() { std::cout << "Kill virus" << std::endl; }
};

class ZipFile
{
public:
	void Operation2() { std::cout << "Zip file" << std::endl; }
};

class EncryptFile
{
public:
	void Operation3() { std::cout << "Encryption" << std::endl; }
};

class BurnCD
{
public:
	void Operation4() { std::cout << "Burning CD" << std::endl; }
};

//高层接口
class OperatorWrapper
{
public:
	//完全功能
	void MethodA()
	{
		KillVirus kv;
		ZipFile zf;
		EncryptFile ef;
		BurnCD bd;

		kv.Operation1();
		zf.Operation2();
		ef.Operation3();
		bd.Operation4();
	}
	//简单功能
	void MethodB()
	{
		KillVirus kv;
		BurnCD bd;

		kv.Operation1();
		bd.Operation4();
	}
};

int main() {
	OperatorWrapper optor;
	optor.MethodA();//完全功能
	optor.MethodB();//简单功能

	return 0;
}
