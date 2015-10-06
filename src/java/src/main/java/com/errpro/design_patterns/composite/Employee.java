package com.errpro.design_patterns.composite;

public interface Employee {
    public void add(Employee emp);

    public void remove(Employee emp);

    public Employee getEmployee(int index);

    public String getName();

    public double getSalary();

    public void echo();
}
