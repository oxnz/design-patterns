package com.errpro.design_patterns.decorator;

public class Test {
    public static void main(String[] args) {
        ConcreteDecorator concreteDecorator = new ConcreteDecorator(new
                ConcreteComponent());
        concreteDecorator.operation();
    }
}
