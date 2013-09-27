<?php

interface Observer {
	public function update($subject);
}

class ObserverA implements Observer {
	public function update($subject) {
		printf("Observer A got: %s\n", $subject->getState());
	}

	public function __destruct() {
	}
}

class ObserverB implements Observer {
	public function update($subject) {
		printf("Observer B got: %s\n", $subject->getState());
	}

	public function __destruct() {
	}
}
?>
