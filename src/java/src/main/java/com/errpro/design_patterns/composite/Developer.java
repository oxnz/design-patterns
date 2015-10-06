package com.errpro.design_patterns.composite;

/*
 * In this class, there are many methods which are not applicable to developer
 * because it is a leaf node.
 */

public class Developer implements Employee {
    private String name;
    private double salary;

    public Developer(String name, double salary) {
        this.name = name;
        this.salary = salary;
    }

    // this is leaf node, so these 3 method below are not applicable to this
    // class
    public void add(Employee emp) {
    }

    public void remove(Employee emp) {
    }

    public Employee getEmployee(int i) {
        return null;
    }

    public String getName() {
        return this.name;
    }

    public double getSalary() {
        return this.salary;
    }

    public void echo() {
        System.out.println("Developer [" + this.name + ", " +
                this.salary + "] echo:");
    }
}
