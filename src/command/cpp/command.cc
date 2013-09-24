#include <iostream>
#include "command.h"

using namespace std;

void Reciever::Action()
{
	cout << "Do action" << endl;
}

Read_Command::Read_Command(Reciever* rev)
{
	this->m_pRev = rev;
}

void Read_Command::Execute()
{
	cout << "Read command..." << endl;
	m_pRev->Action();
}

Read_Command::~Read_Command()
{
	delete m_pRev;
}

Write_Command::Write_Command(Reciever* rev)
{
	this->m_pRev = rev;
}

void Write_Command::Execute()
{
	cout << "Write command..." << endl;
	m_pRev->Action();
}

Write_Command::~Write_Command()
{
	delete m_pRev;
}

Invoker::Invoker(Command* cmd)
{
	m_pCmd = cmd;
}

void Invoker::Notify()
{
	list<Command*>::iterator it = m_lCmdList.begin();
	for(; it != m_lCmdList.end(); ++it) {
		m_pCmd = *it;
		m_pCmd->Execute();
	}
}

void Invoker::AddCmd(Command* cmd)
{
	m_lCmdList.push_back(cmd);
}

void Invoker::DelCmd(Command* cmd)
{
	m_lCmdList.remove(cmd);
}

Invoker::~Invoker()
{
	delete m_pCmd;
}
