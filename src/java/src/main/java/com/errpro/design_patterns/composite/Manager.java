package com.errpro.design_patterns.composite;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class Manager implements Employee {
    private String name;
    private double salary;
    private List<Employee> employees = new ArrayList<Employee>();

    public Manager(String name, double salary) {
        this.name = name;
        this.salary = salary;
    }

    public void add(Employee emp) {
        employees.add(emp);
    }

    public void remove(Employee emp) {
        employees.remove(emp);
    }

    public Employee getEmployee(int i) {
        return employees.get(i);
    }

    public String getName() {
        return name;
    }

    public double getSalary() {
        return salary;
    }

    public void echo() {
        System.out.println("Manager [" + this.name +
                ", " + this.salary + " ] echo: ");
        Iterator<Employee> empIt = employees.iterator();
        while (empIt.hasNext()) {
            Employee emp = empIt.next();
            emp.echo();
        }
    }
}
