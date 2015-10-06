package com.errpro.design_patterns.observer;

public interface Subject {
    public void attach(Observer ob);

    public void detach(Observer ob);

    void notifyObservers();

    public void change();
}
