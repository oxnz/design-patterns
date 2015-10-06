package com.errpro.design_patterns.command;

public class Invoker {
    private Command command = null;

    public void setCommand(Command command) {
        System.out.println("Invoker: setCommand");
        this.command = command;
    }

    public void runCommand() {
        command.execute();
    }
}
