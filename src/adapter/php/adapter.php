<?php
/**
 * 对象适配器使用的是委派
 */

interface Target {
	public function request();
}

class Adaptee {
	public function specificRequest() {
		printf("%s\n", __FUNCTION__);
	}
}

class Adapter implements Target {
	private $_adaptee = null;

	public function __construct(Adaptee $adaptee) {
		$this->_adaptee = $adaptee;
	}

	/**
	 * 委派调用Adaptee的request方法
	 */
	public function request() {
		$this->_adaptee->specificRequest();
	}

	public function __destruct() {
		$this->_adaptee = null;
	}
}

class Client {
	public static function main() {
		$adaptee = new Adaptee();
		$adapter = new Adapter($adaptee);
		$adapter->request();
		$adaptee = null;
		$adapter = null;
	}
}

Client::main();

?>
