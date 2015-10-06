package com.errpro.design_patterns.flyweight;

import java.util.Hashtable;

public class FontInnerFactory {
    private Hashtable<String, FontInner> charHashTable = new Hashtable();

    public FontInnerFactory() {
    }

    public FontInner getFlyweight(String fontString, String status) {
        if (charHashTable.get(fontString) != null) {
            return charHashTable.get(fontString);
        } else {
            FontInner tmp = new FontInner(fontString, status);
            charHashTable.put(fontString, tmp);
            return tmp;
        }
    }

    public Hashtable getFactory() {
        return charHashTable;
    }
}
