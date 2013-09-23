#ifndef HANDLER_H
#define HANDLER_H

class Handler
{
public:
	virtual void HandleRequest(int request) = 0;
	void SetSuccessor(Handler* succ);
	Handler* GetSuccessor() const;
	virtual ~Handler();
protected:
	Handler();
private:
	Handler *m_pSuccessor;
};

//具体处理类 A
class ConcreteHandlerA : public Handler
{
public:
	void HandleRequest(int request);
};

//具体处理类 B
class ConcreteHandlerB : public Handler
{
public:
	void HandleRequest(int request);
};

//具体处理类 C
class ConcreteHandlerC : public Handler
{
public:
	void HandleRequest(int request);
};

#endif//HANDLER_H
