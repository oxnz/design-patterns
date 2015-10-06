package com.errpro.design_patterns.facade;

class KillVirus {
    public void operation() {
        System.out.println("Kill Virus...");
    }
}

class ZipFile {
    public void operation() {
        System.out.println("Kill Virus...");
    }
}

class EncryptFile {
    public void operation() {
        System.out.println("Kill Virus...");
    }
}

class BurnCD {
    public void operation() {
        System.out.println("Kill Virus...");
    }
}

public class OperatorWrapper {
    public void methodA() {
        KillVirus kv = new KillVirus();
        ZipFile zf = new ZipFile();
        EncryptFile ef = new EncryptFile();
        BurnCD bd = new BurnCD();

        System.out.println("Method A:");
        kv.operation();
        zf.operation();
        ef.operation();
        bd.operation();
    }

    public void methodB() {
        KillVirus kv = new KillVirus();
        EncryptFile ef = new EncryptFile();

        System.out.println("Method B:");
        kv.operation();
        ef.operation();
    }
}
