#include "command.h"

int main(int argc, char *argv[]) {
	//定义一个执行类
	Reciever* pRev = new Reciever();

	Command* pCmd1 = new Read_Command(pRev);
	Command* pCmd2 = new Write_Command(pRev);

	Invoker inv;//管理所有命令
	inv.AddCmd(pCmd1);
	inv.AddCmd(pCmd2);
	inv.Notify();//通知执行类，执行
	inv.DelCmd(pCmd1);
	inv.Notify();
	inv.DelCmd(pCmd2);

	return 0;
}
