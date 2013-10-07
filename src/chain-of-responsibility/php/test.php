<?php
/**
 * Package	: DesignPatterns\CoR
 * Author	: 0xnz
 * Last-update:	2013-10-7 12:51
 */
abstract class Handler {
	protected $_handler = null;

	public function setSuccessor($handler) {
		$this->_handler = $handler;
	}
	abstract function handleRequest($request);
}

class ConcreteHandlerZero extends Handler {
	public function handleRequest($request) {
		if ($request == 0) {
			printf("handler0 handling\n");
		}
		else {
			$this->_handler->handleRequest($request);
		}
	}
}

class ConcreteHandlerPos extends Handler {
	public function handleRequest($request) {
		if ($request > 0) {
			printf("positive handler handling: %d\n", $request);
		}
		else {
			$this->_handler->handleRequest($request);
		}
	}
}

class ConcreteHandlerNeg extends Handler {
	public function handleRequest($request) {
		if ($request < 0) {
			printf("negtive handler handling: %d\n", $request);
		}
		else {
			$this->_handler->handleRequest($request);
		}
	}
}

class Client {
	public static function main() {
		$objZero = new ConcreteHandlerZero();
		$objPos = new ConcreteHandlerPos();
		$objNeg = new ConcreteHandlerNeg();
		$objNeg->setSuccessor($objZero);
		$objZero->setSuccessor($objPos);

		foreach (array(-3, -9, 1, 3, 0, 3, 4, 0, -11) as $row) {
			$objNeg->handleRequest($row);
		}
	}
}

Client::main();

?>
