package com.errpro.design_patterns.composite;

/*
 * Manager(Composite)
 * Developer(Leaf)
 * Employee(Component)
 */

public class Test {
    public static void main(String[] args) {
        Employee emp1 = new Developer("John", 10000);
        Employee emp2 = new Developer("David", 14000);
        Employee manager1 = new Manager("Michael", 20000);
        manager1.add(emp1);
        manager1.add(emp2);
        Employee emp3 = new Developer("Daniel", 20000);
        Manager generalManager = new Manager("Mark", 50000);
        generalManager.add(emp3);
        generalManager.add(manager1);
        generalManager.echo();
    }
}
