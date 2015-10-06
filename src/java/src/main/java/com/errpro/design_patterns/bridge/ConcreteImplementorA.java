package com.errpro.design_patterns.bridge;

public class ConcreteImplementorA extends Implementor {
    @Override
    public void operation() {
        System.out.println("ConcreteImplementor A operation");
    }
}
