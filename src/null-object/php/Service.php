<?php

namespace DesignPatterns\NullObject;

/**
 * Service is a dummy service that uses a logger
 */
class Service {
	/**
	 * @var Logger Interface
	 */
	protected $logger;
	/**
	 * we inject the logger in ctor and it is mandatory
	 *
	 * @param Logger $log
	 */
	public function __construct(Logger $logger) {
		$this->logger = $logger;
	}

	/**
	 * do something
	 */
	public function doSomething() {
		/**
		 * no more check "if (!is_null($this->logger))..." with the NullObject
		 */
		$this->logger->log('We are in ' . __METHOD__);
		// do actual action
	}
}

?>
