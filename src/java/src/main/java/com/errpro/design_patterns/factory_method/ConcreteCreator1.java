package com.errpro.design_patterns.factory_method;

public class ConcreteCreator1 implements Creator {
    public Product factory() {
        return new ConcreteProductA();
    }
}
