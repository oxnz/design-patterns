package com.errpro.design_patterns.command;

public class TV {
    public int currentChannel = 0;

    public void turnOn() {
        System.out.println("TV on");
    }

    public void turnOff() {
        System.out.println("TV off");
    }

    public void changeChannel(int channel) {
        this.currentChannel = channel;
        System.out.println("TV channel: " + channel);
    }
}
