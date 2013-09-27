<?php
/**
 * strategy pattern
 *
 * @author 0xnz
 * @package design patterns
 * @update Fri Sep 27 22:09:51 CST 2013
 */

/**
 * 抽象策略角色，以接口实现
 */
interface Strategy {
	/**
	 * 算法接口
	 */
	public function algorithmInterface();
}

class ConcreteStrategyA implements Strategy {
	public function algorithmInterface() {
		printf("%s\n", __CLASS__);
	}
}

class ConcreteStrategyB implements Strategy {
	public function algorithmInterface() {
		printf("%s\n", __CLASS__);
	}
}

class ConcreteStrategyC implements Strategy {
	public function algorithmInterface() {
		printf("%s\n", __CLASS__);
	}
}

/**
 * 环境角色
 */
class Context {
	/* 引用的策略 */
	private $_strategy;

	public function __construct(Strategy $strategy) {
		$this->_strategy = $strategy;
	}

	public function contextInterface() {
		$this->_strategy->algorithmInterface();
	}
}

class Client {
	public static function main() {
		$strategyA = new ConcreteStrategyA();
		$context = new Context($strategyA);
		$context->contextInterface();

		$strategyB = new ConcreteStrategyB();
		$context = new Context($strategyB);
		$context->contextInterface();

		$strategyC = new ConcreteStrategyC();
		$context = new Context($strategyC);
		$context->contextInterface();
	}
}

Client::main();

?>
