package com.errpro.design_patterns.mediator;

public abstract class Colleague {
    protected Mediator mediator;

    public Colleague(Mediator m) {
        this.mediator = m;
    }

    public abstract void sendMsg(String msg);

    public abstract void readMsg(String msg);
}
