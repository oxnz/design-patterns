#include <iostream>
#include "state.h"

using namespace std;

State::~State()
{
	cout << "Destruct of state" << endl;
}

void ExhaustState::Operation(Work* w)
{
	if (w->GetStep() == 4) {
		cout << "Step: " << w->GetStep() << "排气操作" << endl;
	}
}

void ActState::Operation(Work* w)
{
	if (w->GetStep() == 3) {
		cout << "Step: " << w->GetStep() << "做功操作" << endl;
	}
	else {
		w->SetState(new ExhaustState());
		w->Operation();
	}
}
void CompressState::Operation(Work* w)
{
	if (w->GetStep() == 2) {
		cout << "Step: " << w->GetStep() << "压缩操作" << endl;
	}
	else {
		w->SetState(new ActState());
		w->Operation();
	}
}
void InhaleState::Operation(Work* w)
{
	if (w->GetStep() == 1) {
		cout << "Step: " << w->GetStep() << "吸气操作" << endl;
	}
	else {
		State *pState = new CompressState();
		w->SetState(pState);
		w->Operation();
	}
}

Work::Work(State* state)
: m_pState(state), m_nStep(0) {}

int Work::GetStep() const
{
	return m_nStep;
}

void Work::SetStep(int step)
{
	m_nStep = step;
}

void Work::SetState(State* state)
{
	delete m_pState;
	m_pState = state;
}

void Work::Operation()
{
	m_pState->Operation(this);
}

Work::~Work()
{
	cout << "Destruct of work" << endl;
	if (m_pState)
		delete m_pState;
}
