#ifndef COMMAND_H
#define COMMAND_H

#include <list>

class Reciever
{
public:
	Reciever(){}
	void Action();
};

class Command
{
public:
	virtual void Execute() = 0;
	virtual ~Command(){}
protected:
	Command(){}
};

class Read_Command : public Command
{
public:
	Read_Command(Reciever* rev);
	void Execute();
	~Read_Command();
private:
	Reciever* m_pRev;
};

class Write_Command : public Command
{
public:
	Write_Command(Reciever* rev);
	void Execute();
	~Write_Command();
private:
	Reciever* m_pRev;
};

class Invoker
{
public:
	Invoker(Command* cmd);
	Invoker(){}
	void Notify();
	void AddCmd(Command* cmd);
	void DelCmd(Command* cmd);
	~Invoker();
private:
	Command* m_pCmd;
	std::list<Command*> m_lCmdList;
};

#endif//COMMAND_H
