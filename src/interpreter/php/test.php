<?php
/**
 * Package	: DesignPatterns\interpreter
 * Author	: 0xnz
 * Last-update:	2013-10-7 12:39
 */
class Expression {
	function interpret($str) {
		return $str;
	}
}

class ExpressionNum extends Expression {
	function interpret($str) {
		switch($str) {
		case "0": return "ZERO";
		case "1": return "ONE";
		case "2": return "TWO";
		case "3": return "THREE";
		case "4": return "FOUR";
		case "5": return "FIVE";
		case "6": return "SIX";
		case "9": return "NINE";
		}
	}
}

class ExpressionChar extends Expression {
	function interpret($str) {
		return strtoupper($str);
	}
}

class Interpreter {
	function execute($str) {
		$expression = null;
		for ($i = 0; $i < strlen($str); $i++) {
			$temp = $str[$i];
			switch (true) {
			case is_numeric($temp):
				$expression = new ExpressionNum(); break;
			default:
				$expression = new ExpressionChar();
			}
			printf("%s ", $expression->interpret($temp));
		}
		printf("\n");
	}
}

class Client {
	public static function main() {
		$obj = new Interpreter();
		$obj->execute("12345abcde");
	}
}

Client::main();
?>
