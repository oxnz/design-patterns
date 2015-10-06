package com.errpro.design_patterns.command;

public class CommandOn implements Command {
    private TV tv;

    public CommandOn(TV tv) {
        this.tv = tv;
    }

    public void execute() {
        tv.turnOn();
    }
}
