package com.errpro.design_patterns.observer;

public class Test {
    public static void main(String args[]) {
        Observer ob1 = new ConcreteObserver();
        Observer ob2 = new ConcreteObserver();
        Subject sb = new ConcreteSubject();

        sb.attach(ob1);
        sb.attach(ob2);

        sb.change();
    }
}
