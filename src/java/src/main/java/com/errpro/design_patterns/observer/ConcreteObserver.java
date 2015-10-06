package com.errpro.design_patterns.observer;

public class ConcreteObserver implements Observer {
    public void update() {
        System.out.println("update from ConcreteObserver");
    }
}
