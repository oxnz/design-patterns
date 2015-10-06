package com.errpro.design_patterns.memento;

public class RoleMemoManager {
    private RoleStateMemo memo;

    public RoleStateMemo getMemo() {
        return this.memo;
    }

    public void setMemo(RoleStateMemo memo) {
        this.memo = memo;
    }
}
