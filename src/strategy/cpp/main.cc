#include <iostream>

//策略类
class Algorithm
{
public:
	virtual void calculate() = 0;
	virtual ~Algorithm(){}
};

class RSA_Algorithm : public Algorithm
{
public:
	void calculate() { std::cout << "RSA" << std::endl; }
};

class DES_Algorithm : public Algorithm
{
public:
	void calculate() { std::cout << "DES" << std::endl; }
};

//策略上下文
class Algorithm_Context
{
private:
	Algorithm *m_pAlgorithm;
public:
	Algorithm_Context(Algorithm* a) : m_pAlgorithm(a) {}
	void calculate() { m_pAlgorithm->calculate(); }
	~Algorithm_Context() { delete m_pAlgorithm; }
};

int main() {
	Algorithm_Context context(new RSA_Algorithm());	//使用具体算法
	context.calculate();

	return 0;
}
