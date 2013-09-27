<?php

interface Observerable {
	public function attach($observer);
	public function detach($observer);
	public function notify();
}

class SubjectA implements Observerable {
	private $_state = null;
	private $_observers = array();

	public function __construct($state = null) {
		if (empty($state)) {
			$this->_state = "sleeping";
		}
		else {
			$this->_state = $state;
		}
	}

	public function setState($state) {
		if ($this->_state != $state) {
			$this->_state = $state;
			$this->notify();
		}
	}

	public function getState() {
		return "[Subject A] " . $this->_state;
	}

	public function attach($observer) {
		$this->_observers[] = $observer;
	}

	public function detach($observer) {
		$key = array_search($observer, $this->_observers);
		if (!($key === false)) {
			unset($this->_observers[$key]);
		}
	}

	public function notify() {
		foreach ($this->_observers as $observer) {
			$observer->update($this);
		}
	}
}

?>
