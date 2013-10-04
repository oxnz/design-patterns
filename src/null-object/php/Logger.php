<?php

namespace DesignPatterns\NullObject;

/**
 * @name Logger interface is a contract for logging something
 *
 * Key feature: NullLogger MUST inherit from this interface like any other
 * Loggers.
 */
public interface Logger {
	/**
	 * @param string $str
	 *
	 * @return mixed
	 */
	public function log($str);
}
