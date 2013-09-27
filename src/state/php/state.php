<?php

/**
 * 抽象状态角色
 */

interface State {
	public function handle(Context $context);
}

/**
 * 具体状态角色A
 * 单例类
 */

class ConcreteStateA implements State {
	/* 唯一的实例 */
	private static $_instance = null;

	private function __construct() {
	}

	/**
	 * 静态工厂方法，返还此类的唯一实例
	 */
	public static function getInstance() {
		if (is_null(self::$_instance)) {
			self::$_instance = new ConcreteStateA();
		}
		return self::$_instance;
	}

	public function handle(Context $context) {
		printf("Concrete State A handle method\n");
		$context->setState(ConcreteStateB::getInstance());
	}
}

class ConcreteStateB implements State {
	/* 唯一的实例 */
	private static $_instance = null;

	private function __construct() {
	}

	/**
	 * 静态工厂方法，返还此类的唯一实例
	 */
	public static function getInstance() {
		if (is_null(self::$_instance)) {
			self::$_instance = new ConcreteStateB();
		}
		return self::$_instance;
	}

	public function handle(Context $context) {
		printf("Concrete State B handle method\n");
		$context->setState(ConcreteStateA::getInstance());
	}
}

?>
