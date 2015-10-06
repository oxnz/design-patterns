package com.errpro.design_patterns.flyweight;

public class FontInner {
    private String fontString;
    private String status;

    public FontInner(String fontString, String status) {
        this.setFontString(fontString);
        this.setStatus(status);
    }

    public String getStatus() {
        return this.status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getFontString() {
        return this.fontString;
    }

    public void setFontString(String fontString) {
        this.fontString = fontString;
    }
}
