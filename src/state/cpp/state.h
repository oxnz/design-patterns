#ifndef STATE_H
#define STATE_H

class Work;

class State
{
public:
	virtual void Operation(Work*){}
	virtual ~State();
};

class ExhaustState : public State
{
public:
	void Operation(Work* w);
};

class ActState : public State
{
public:
	void Operation(Work* w);
};

class CompressState : public State
{
public:
	void Operation(Work* w);
};

class InhaleState : public State
{
public:
	void Operation(Work* w);
};

class Work
{
public:
	Work(State* state);
	int GetStep() const;
	void SetStep(int step);
	void SetState(State* state);
	void Operation();
	~Work();
private:
	State* m_pState;
	int m_nStep;
};

#endif//STATE_H
