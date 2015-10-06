package com.errpro.design_patterns.strategy;

//引用实例，持有策略者
public class Computer {
	private PowerStrategy powerStrategy;
	
	public PowerStrategy getPowerStrategy() {
		return this.powerStrategy;
	}
	public void setPowerStrategy(PowerStrategy powerStrategy) {
		this.powerStrategy = powerStrategy;
	}
	public void applyPowerStrategy() {
		powerStrategy.apply();
	}
}
