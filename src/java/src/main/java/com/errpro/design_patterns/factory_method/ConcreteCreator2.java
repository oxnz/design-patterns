package com.errpro.design_patterns.factory_method;

public class ConcreteCreator2 implements Creator {
    public Product factory() {
        return new ConcreteProductB();
    }
}
