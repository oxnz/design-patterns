package com.errpro.design_patterns.command;

public class CommandOff implements Command {
    private TV tv;

    public CommandOff(TV tv) {
        this.tv = tv;
    }

    public void execute() {
        tv.turnOff();
    }
}
