package com.errpro.design_patterns.command;

//可以看作是遥控器吧
public class Control {
    private Command onCommand, offCommand, changeChannel;

    public Control(Command on, Command off, Command changeChannel) {
        this.onCommand = on;
        this.offCommand = off;
        this.changeChannel = changeChannel;
    }

    public void turnOn() {
        onCommand.execute();
    }

    public void turnOff() {
        offCommand.execute();
    }

    public void changeChannel() {
        changeChannel.execute();
    }
}
