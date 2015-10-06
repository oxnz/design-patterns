package com.errpro.design_patterns.strategy;

//策略1 高表现性能策略
public class MediumStrategy implements PowerStrategy {
	public void apply() {
		System.out.println("*** Medium power strategy ***");
		System.out.println("trun off monitor: 1 hour");
		System.out.println("trun off harddisk: 2 hours");
		System.out.println("system standby: 3 hours");
		System.out.println("system hibernates: 4 hours");
	}
}
