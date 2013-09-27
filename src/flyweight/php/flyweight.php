<?php
/**
 *
 * @author 0xnz
 * @package design pattern
 */

abstract class Flyweight {
	/**
	 * demo method
	 *
	 * @param string $state extrinsic state
	 */
	public abstract function operation($state);
}

class ConcreteFlyweight extends Flyweight {
	private $_intrinsicState = null;

	/**
	 * constructor
	 *
	 * @param string $state extrinsic state
	 */
	public function __construct($state) {
		$this->_intrinsicState = $state;
	}

	public function operation($state) {
		printf("ConcreteFlyweight operation: intrinsic state [%s]
			extrinsic state [%s]\n",
			$this->_intrinsicState, $state);
	}
}

class UnsharedConcreteFlyweight extends Flyweight {
	private $_intrinsicState = null;

	public function __construct($state) {
		$this->_intrinsicState = $state;
	}

	public function operation($state) {
		printf("UnsharedConcreteFlyweight operation: intrinsic state
			[%s] extrinsic state [%s]\n",
			$this->_intrinsicState, $state);
	}
}

class FlyweightFactory {
	private $_flyweights;

	public function __construct() {
		$this->_flyweights = array();
	}

	public function getFlyweight($state) {
		if (isset($this->_flyweights[$state])) {
			return $this->_flyweights[$state];
		}
		else {
			return $this->_flyweights[$state] =
				new ConcreteFlyweight($state);
		}
	}

	public function __destruct() {
		foreach ($this->_flyweights as $flyweight) {
			$flyweight = null;
		}
		$this->_flyweights = null;
	}
}

class Client {
	public static function main() {
		$flyweightFactory = new FlyweightFactory();
		$flyweight = $flyweightFactory->getFlyweight("state A");
		$flyweight->operation("state X");
		$flyweight = $flyweightFactory->getFlyweight("state B");
		$flyweight->operation("state B");
		$flyweight1 = $flyweightFactory->getFlyweight("state B");
		var_dump(($flyweight == $flyweight1));

		/**
		 * unshared objs
		 */
		$uflyweight = new UnsharedConcreteFlyweight('state A');
		$uflyweight->operation('state Y');
	}
}

Client::main();

?>
