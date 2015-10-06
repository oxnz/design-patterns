package com.errpro.design_patterns.flyweight;

public class ConcreteFont implements Font {
    private String color;
    private int size;
    private FontInner fontInner;

    public ConcreteFont(FontInner fi) {
        this.fontInner = fi;
    }

    public void setFont(String color, int size) {
        this.color = color;
        this.size = size;
    }

    public void getFont() {
        System.out.println("String :" + this.fontInner.getFontString() +
                "--- color is: " + this.color + "--- size is:" +
                this.size);
    }
}
