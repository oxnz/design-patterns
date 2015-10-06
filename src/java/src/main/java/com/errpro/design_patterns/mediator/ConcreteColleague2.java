package com.errpro.design_patterns.mediator;

public class ConcreteColleague2 extends Colleague {
    public ConcreteColleague2(Mediator m) {
        super(m);
    }

    public void sendMsg(String msg) {
        System.out.println("Colleague2 sends msg: " + msg);
        mediator.send(msg, this);
    }

    public void readMsg(String msg) {
        System.out.println("Colleague2 get msg: " + msg);
    }
}
