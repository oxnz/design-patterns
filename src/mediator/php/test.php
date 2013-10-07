<?php
/**
 * @package DesignaPatterns\Mediator
 * @file test.php
 * @brief 
 * @author 0xnz - <yunxinyi AT gmail DOT com>
 * @version 0.1
 * @date 2013-10-07
 */
abstract class Mediator {
	abstract public function send($message, $colleague);
}

abstract class Colleague {
	private $_mediator = null;
	public function __construct($mediator) {
		$this->_mediator = $mediator;
	}
	public function send($message) {
		$this->_mediator->send($message, $this);
	}
	abstract public function notify($message);
}

class ConcreteMediator extends Mediator {
	private $_colleague1 = null;
	private $_colleague2 = null;

	public function send($message, $colleague) {
		if ($colleague == $this->_colleague1) {
			$this->_colleague2->notify($message);
		} else {
			$this->_colleague1->notify($message);
		}
	}
	public function setColleagues($colleague1, $colleague2) {
		$this->_colleague1 = $colleague1;
		$this->_colleague2 = $colleague2;
	}
}

class Colleague1 extends Colleague {
	public function notify($message) {
		printf("Colleague1 Recevies Message: %s\n", $message);
	}
}

class Colleague2 extends Colleague {
	public function notify($message) {
		printf("Colleague2 Recevies Message: %s\n", $message);
	}
}

class Client {
	public static function main() {
		$mediator = new ConcreteMediator();
		$c1 = new Colleague1($mediator);
		$c2 = new Colleague2($mediator);
		$mediator->setColleagues($c1, $c2);
		$c1->send("Hi, Colleague 2, I'm Colleague 1");
		$c2->send("Hi, Colleague 1, I'm Colleague 2");
	}
}

Client::main();
?>
