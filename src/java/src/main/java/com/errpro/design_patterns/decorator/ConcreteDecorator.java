package com.errpro.design_patterns.decorator;

public class ConcreteDecorator extends Decorator {
    public ConcreteDecorator(Component component) {
        super(component);
    }

    public void operation() {
        super.operation();
        extraBehavior();
    }

    private void extraBehavior() {
        System.out.println("Extra Behavior");
    }
}
