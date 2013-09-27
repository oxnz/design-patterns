#!/usr/bin/php
<?php
require_once('./visitor.php');
require_once('./corporation.php');

class Client {
	private $_visitors = null;
	private $_corporations = null;

	public function __construct() {
		$this->_visitors = array();
		$this->_corporations = array();
	}

	public function test() {
		$this->_visitors[] = new VisitorA("Alex");
		$this->_visitors[] = new VisitorB("John");
		$this->_corporations[] = new CorporationA("Intel");
		$this->_corporations[] = new CorporationB("AMD");

		foreach ($this->_visitors as $visitor) {
			foreach ($this->_corporations as $corporation) {
				$corporation->accept($visitor);
			}
		}
	}

	public function __destruct() {
		$this->_visitors = null;
		$this->_corporations = null;
	}
}

$client = new Client();
$client->test();
$client = null;

?>
