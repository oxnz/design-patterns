package com.errpro.design_patterns.singleton;

/*
 * Copyright (c) 2015 oxnz. All rights reserved.
 */

public class Singleton {

	private Singleton() {
    }

	private static final Singleton singleton = new Singleton();

	/**
	 * Returns an Singleton object that only exist one copy.
	 * <p>
	 *
	 * This method returns a static final object.
	 *
	 * @return	a Sinleton instance
	 */
	public static Singleton getInstance() {
		return singleton;
	}
}
