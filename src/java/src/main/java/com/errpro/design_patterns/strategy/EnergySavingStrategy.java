package com.errpro.design_patterns.strategy;

//策略1 高表现性能策略
public class EnergySavingStrategy implements PowerStrategy {
	public void apply() {
		System.out.println("*** Energy-saving power strategy ***");
		System.out.println("trun off monitor: 5 minutes");
		System.out.println("trun off harddisk: 15 minutes");
		System.out.println("system standby: 30 minutes");
		System.out.println("system hibernates: 1 hour");
	}
}
