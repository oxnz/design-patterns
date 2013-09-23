#ifndef BUILDER_H
#define BUILDER_H

class Builder
{
public:
	virtual void BuildStep1() = 0;
	virtual void BuildStep2() = 0;
	virtual void BuildStep3() = 0;
	virtual void BuildStep4() = 0;
	virtual ~Builder(){}
};

class KFCBuilder : public Builder
{
	void BuildStep1();
	void BuildStep2();
	void BuildStep3();
	void BuildStep4();
};

class MCDBuilder : public Builder
{
	void BuildStep1();
	void BuildStep2();
	void BuildStep3();
	void BuildStep4();
};
#endif//BUILDER_H
