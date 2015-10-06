package com.errpro.design_patterns.command;

public class Test {
    public void testTV() {
        System.out.println("testing TV:");
        // 命令接收者
        TV tv = new TV();
        // 开机命令
        Command on = new CommandOn(tv);
        // 关机命令
        CommandOff off = new CommandOff(tv);
        // 频道切换命令
        CommandChange channel = new CommandChange(tv, 2);
        // 命令控制对象
        Control control = new Control(on, off, channel);
        // 开机
        control.turnOn();
        // 切换频道
        control.changeChannel();
        // 关机
        control.turnOff();
    }

    public void test() {
        //创建接收者
        Receiver receiver = new Receiver();
        //创建命令对象，设定它的接收者
        Command command = new ConcreteCommand(receiver);
        //创建Invoker，把命令对象设置进去
        Invoker invoker = new Invoker();
        invoker.setCommand(command);
        invoker.runCommand();
    }

    public static void main(String[] args) {
        //Test TV
        Test t = new Test();
        t.test();
        t.testTV();
    }
}
