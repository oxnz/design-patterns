<?php
require_once('./context.php');

class Client {
	/**
	 * Main program
	 */
	public static function main() {
		$context = new Context();
		$context->request();
		$context->request();
		$context->request();
		$context = null;
	}
}

Client::main();

?>
