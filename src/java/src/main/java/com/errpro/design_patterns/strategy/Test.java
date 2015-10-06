package com.errpro.design_patterns.strategy;

public class Test {
	public static void main(String[] args) {
		Computer c = new Computer();
		c.setPowerStrategy(new HighPerformanceStrategy());
		c.applyPowerStrategy();

		c.setPowerStrategy(new MediumStrategy());
		c.applyPowerStrategy();

		c.setPowerStrategy(new EnergySavingStrategy());
		c.applyPowerStrategy();
	}
}
