package com.errpro.design_patterns.memento;

public class Test {
    public static void main(String[] args) {
        GameRole role = new GameRole();
        role.showState();
        RoleMemoManager mm = new RoleMemoManager();
        mm.setMemo(role.save());
        role.fight();    // fight to death
        role.showState();
        role.reload(mm.getMemo()); // refresh state to a previous state
        role.showState();
        role.fight();
    }
}
