package com.errpro.design_patterns.mediator;

public class ConcreteColleague1 extends Colleague {
    public ConcreteColleague1(Mediator m) {
        super(m);
    }

    public void sendMsg(String msg) {
        try {
            System.out.println(new String(msg.getBytes("EUC_CN"), "UTF-8"));
            System.out.println(new String(msg.getBytes("UTF-8"), "EUC_CN"));
            System.out.println(new String(msg.getBytes("GBK"), "EUC_CN"));
            System.out.println(new String(msg.getBytes("EUC_CN"), "GB2312"));
            System.out.println(System.getProperty("file.encoding"));
        } catch (Exception ex) {
            System.out.println("Code exception");
        }
        System.out.println("Colleague1 sends msg: " + msg);
        mediator.send(msg, this);
    }

    public void readMsg(String msg) {
        System.out.println("Colleague1 get msg: " + msg);
    }
}
