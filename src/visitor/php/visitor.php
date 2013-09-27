<?php

interface Visitor {
	public function visit($corporation);
}

class VisitorA implements Visitor {
	private $_name = null;
	public function __construct($name) {
		$this->_name = $name;
	}

	public function getName() {
		return $this->_name;
	}

	public function visit($corporation) {
		printf("visitor %s is visiting corporation %s\n", $this->_name,
			$corporation->getName());
	}

	public function __destruct() {
		$this->_name = null;
	}
}

class VisitorB implements Visitor {
	private $_name = null;
	public function __construct($name) {
		$this->_name = $name;
	}

	public function getName() {
		return $this->_name;
	}

	public function visit($corporation) {
		printf("visitor %s is visiting corporation %s\n", $this->_name,
			$corporation->getName());
	}

	public function __destruct() {
		$this->_name = null;
	}
}

?>
