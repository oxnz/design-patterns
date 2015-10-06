package com.errpro.design_patterns.strategy;

//策略1 高表现性能策略
public class HighPerformanceStrategy implements PowerStrategy {
	public void apply() {
		System.out.println("*** High performance power strategy ***");
		System.out.println("trun off monitor: Never");
		System.out.println("trun off harddisk: Never");
		System.out.println("system standby: Never");
		System.out.println("system hibernates: Never");
	}
}
