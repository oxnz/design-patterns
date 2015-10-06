package com.errpro.design_patterns.mediator;

interface Mediator {
    public void send(String msg, Colleague c);
}

public class ConcreteMediator implements Mediator {
    private ConcreteColleague1 colleague1;
    private ConcreteColleague2 colleague2;

    public void setColleague1(ConcreteColleague1 colleague1) {
        this.colleague1 = colleague1;
    }

    public void setColleague2(ConcreteColleague2 colleague2) {
        this.colleague2 = colleague2;
    }

    public void send(String msg, Colleague c) {
        if (c == colleague1) {
            colleague2.readMsg(msg);
        } else {
            colleague1.readMsg(msg);
        }
    }
}
