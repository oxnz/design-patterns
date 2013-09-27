<?php

/**
 * 复合享元
 *
 * 复合享元模式对象是由一些单纯享元使用合成模式加以复合而成.
 * 复合享元角色所代表的对象是不可以共享的，但是一个复合享元对象可以分解成为
 * 多个本身是单纯享元对象的组合。
 */

abstract class Flyweight {
	public abstract function operation($state);
}

class ConcreteFlyweight extends Flyweight {
	private $_intrinsicState = null;

	public function __construct($state) {
		$this->_intrinsicState = $state;
	}

	public function operation($state) {
		printf("ConcreteFlyweight operation: intrinsic [%s] extrinsic
			[%s]\n", $this->_intrinsicState, $state);
	}
}

class UnsharedConcreteFlyweight extends Flyweight {
	private $_flyweights;

	public function __construct() {
		$this->_flyweights = array();
	}

	public function operation($state) {
		foreach ($this->_flyweights as $flyweight) {
			$flyweight->operation($state);
		}
	}

	public function add($state, Flyweight $flyweight) {
		$this->_flyweights[$state] = $flyweight;
	}
}

class FlyweightFactory {
	private $_flyweights;

	public function __construct() {
		$this->_flyweights = array();
	}

	public function getFlyweight($state) {
		if (is_array($state)) {	//复合模式
			$uFlyweight = new UnsharedConcreteFlyweight();

			foreach ($state as $row) {
				$uFlyweight->add($row, $this->getFlyweight($row));
			}
			return $uFlyweight;
		}
		else if (is_string($state)) {
			if (isset($this->_flyweights[$state])) {
				return $this->_flyweights[$state];
			}
			else {
				return $this->_flyweights[$state] = new
					ConcreteFlyweight($state);
			}
		}
		else {
			return null;
		}
	}
}

class Client {
	public static function main() {
		$flyweightFactory = new FlyweightFactory();
		$flyweight = $flyweightFactory->getFlyweight("state A");
		$flyweight->operation("state x");

		$flyweight = $flyweightFactory->getFlyweight("state B");
		$flyweight->operation("state y");

		//复合对象
		$uFlyweight = $flyweightFactory->getFlyweight(array("state A",
			"state B"));
		$uFlyweight->operation("state z");
	}
}

Client::main();

?>
