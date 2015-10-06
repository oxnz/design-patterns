package com.errpro.design_patterns.bridge;

public class Test {
    public static void main(String[] args) {
        Abstraction abstraction = new RefinedAbstraction();

        // Set implementation and call
        abstraction.setImplementor(new ConcreteImplementorA());
        abstraction.operation();

        // Change implementation and call
        abstraction.setImplementor(new ConcreteImplementorB());
        abstraction.operation();
    }
}
