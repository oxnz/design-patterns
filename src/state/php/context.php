<?php
require_once('./state.php');

class Context {
	private $_state;

	/**
	 * default stateA
	 */
	public function __construct() {
		$this->_state = ConcreteStateA::getInstance();
	}

	public function setState(State $state) {
		$this->_state = $state;
	}

	public function request() {
		$this->_state->handle($this);
	}
}

?>
