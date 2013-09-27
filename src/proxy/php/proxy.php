#!/usr/bin/php
<?php
/**
 * Proxy pattern
 *
 * author:	0xnz
 */

interface Subject {
	public function request();
}

class RealSubject implements Subject {
	public function request() {
		printf("Handling request in real subject\n");
	}
}

class Proxy implements Subject {
	var $subject;

	public function Proxy($subject) {
		$this->subject = $subject;
	}

	// pass request to real subject
	public function  request() {
		$this->subject->request();
	}
}

$proxy = new Proxy(new RealSubject());
$proxy->request();

?>
