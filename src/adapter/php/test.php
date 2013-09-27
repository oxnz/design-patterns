<?php
/**
 * adapter
 * 类适配器使用的是继承
 */

interface Target {
	public function request();
}

class Adaptee {
	public function specificRequest() {
		printf("%s %s\n", __CLASS__, __FUNCTION__);
	}
}

class Adapter extends Adaptee implements Target {
	public function request() {
		$this->specificRequest();
	}
}

class Client {
	public static function main() {
		$adapter = new Adapter();
		$adapter->request();
		$adapter = null;
	}
}

Client::main();

?>
