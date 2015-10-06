package com.errpro.design_patterns.observer;

import java.util.Enumeration;
import java.util.Vector;

public class ConcreteSubject implements Subject {
    private Vector observerVector = new java.util.Vector();

    public void attach(Observer ob) {
        observerVector.addElement(ob);
    }

    public void detach(Observer ob) {
        observerVector.removeElement(ob);
    }

    public void notifyObservers() {
        Enumeration enumeration = observers();
        while (enumeration.hasMoreElements()) {
            ((Observer) enumeration.nextElement()).update();
        }
    }

    public Enumeration observers() {
        return ((Vector) observerVector.clone()).elements();
    }

    public void change() {
        System.out.println("Change in ConcreteSubject");
        notifyObservers();
    }
}
