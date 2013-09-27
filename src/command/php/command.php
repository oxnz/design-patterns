<?php
/**
 * command pattern
 */

interface Command {
	public function execute();
}

class ConcreteCommand implements Command {
	private $_receiver;

	public function __construct(Receiver $receiver) {
		$this->_receiver = $receiver;
	}

	public function execute() {
		$this->_receiver->action();
	}
}

class Receiver {
	/* 接收者名称 */
	private $_name;

	public function __construct($name) {
		$this->_name = $name;
	}

	public function action() {
		printf("%s -> %s\n", $this->_name, __FUNCTION__);
	}
}

class Invoker {
	private $_command;

	public function __construct(Command $command) {
		$this->_command = $command;
	}

	public function action() {
		$this->_command->execute();
	}
}

class Client {
	public static function main() {
		$receiver = new Receiver("John");
		$command = new ConcreteCommand($receiver);
		$invoker = new Invoker($command);
		$invoker->action();
		$receiver = null;
		$command = null;
		$invoker = null;
	}
}

Client::main();

?>
