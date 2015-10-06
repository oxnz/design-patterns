package com.errpro.design_patterns.flyweight;

import java.util.ArrayList;
import java.util.Hashtable;
import java.util.List;

public class Test {
    public static void main(String[] args) {
        int[] size = {8, 9, 10, 11, 12};
        String[] color = {"FFFFFF", "000000", "FF00FF", "CCCCCC",
                "111111"};
        FontInnerFactory fif = new FontInnerFactory();
        String string = "A test string";
        List<Font> fontList = new ArrayList();
        for (int i = 0; i < string.length(); ++i) {
            int j = 0;
            j = (int) Math.floor(Math.random() * 5);
            ConcreteFont font = new ConcreteFont(fif.getFlyweight(string.substring(i, i + 1), ""));
            font.setFont(color[j], size[j]);
            fontList.add(font);
        }

        Hashtable htbl = fif.getFactory();
        System.out.println("Hash table size is:" + htbl.size());
        for (Font font : fontList) {
            font.getFont();
        }
    }
}
