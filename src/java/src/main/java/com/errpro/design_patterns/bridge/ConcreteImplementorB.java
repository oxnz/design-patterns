package com.errpro.design_patterns.bridge;

public class ConcreteImplementorB extends Implementor {
    @Override
    public void operation() {
        System.out.println("ConcreteImplementor B operation");
    }
}
