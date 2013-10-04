<?php

namespace DesignPatterns\NullObject;

/**
 * PrintLogger is a logger that prints the log entry to standard output
 */
class PrintLogger implements Logger {
	/**
	 * @param string $str
	 */
	public function log($str) {
		echo $str;
	}
}
