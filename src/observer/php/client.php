<?php

require_once('observer.php');
require_once('subject.php');

class Client {
	private $obj1 = null;
	private $obj2 = null;
	private $sub = null;

	public function __construct() {
		$this->obj1 = new ObserverA();
		$this->obj2 = new ObserverB();
		$this->sub = new SubjectA();
	}

	public function test() {
		$this->sub->attach($this->obj1);
		$this->sub->attach($this->obj2);
		$this->sub->setState("working");
		$this->sub->detach($this->ob2);
		$this->sub->setState("studying");
		$this->sub->detach($this->obj1);
		$this->sub->setState("eating");
	}

	public function __destruct() {
		$obj1 = null;
		$obj2 = null;
		$obj3 = null;
	}
}

$client = new Client();
$client->test();
$client = null;

?>
