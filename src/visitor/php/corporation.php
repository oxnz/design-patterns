<?php

interface Corporation {
	public function accept($visitor);
}

class CorporationA implements Corporation {
	private $_name = null;

	public function __construct($name) {
		$this->_name = $name;
	}

	public function getName() {
		return $this->_name;
	}

	public function accept($visitor) {
		printf("Corporation %s accept visitor %s\n", $this->_name,
			$visitor->getName());
		$visitor->visit($this);
	}

	public function __destruct() {
		$this->_name = null;
	}
}

class CorporationB implements Corporation {
	private $_name = null;

	public function __construct($name) {
		$this->_name = $name;
	}

	public function getName() {
		return $this->_name;
	}

	public function accept($visitor) {
		printf("Corporation %s accept visitor %s\n", $this->_name,
			$visitor->getName());
		$visitor->visit($this);
	}

	public function __destruct() {
		$this->_name = null;
	}
}

?>
