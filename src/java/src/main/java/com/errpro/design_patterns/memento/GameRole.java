package com.errpro.design_patterns.memento;

public class GameRole {
    private int vitality;
    private int attack;
    private int defense;

    public GameRole() {
        this.vitality = 100;
        this.attack = 100;
        this.defense = 100;
    }

    public void showState() {
        System.out.println("state: [vitality=" + vitality + " attack=" +
                attack + " defense=" + defense + "]");
    }

    public RoleStateMemo save() {
        return new RoleStateMemo(vitality, attack, defense);
    }

    public void reload(RoleStateMemo m) {
        System.out.print("Reloading...\t");
        this.vitality = m.getVitality();
        this.attack = m.getAttack();
        this.defense = m.getDefense();
        System.out.println("Done");
    }

    public void fight() {
        System.out.println("Fighting with a big boss...");
        System.out.println("vitality too low, died");
        this.vitality = 0;
        this.defense = 0;
        this.attack = 0;
    }
}
