package com.errpro.design_patterns.memento;

public class RoleStateMemo {
    private int vitality;
    private int attack;
    private int defense;

    public RoleStateMemo(int vitality, int attack, int defense) {
        this.vitality = vitality;
        this.attack = attack;
        this.defense = defense;
    }

    public int getVitality() {
        return this.vitality;
    }

    public void setVitality(int vitality) {
        this.vitality = vitality;
    }

    public int getAttack() {
        return this.attack;
    }

    public void setAttack(int attack) {
        this.attack = attack;
    }

    public int getDefense() {
        return this.defense;
    }

    public void setDefense(int defense) {
        this.defense = defense;
    }
}
