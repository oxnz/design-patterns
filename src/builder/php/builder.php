<?php
/**
 * builder pattern
 */

class Product {
	/**
	 * 产品的组成部分集合
	 */
	private $_parts;

	public function __construct() {
		$this->_parts = array();
	}

	public function add($part) {
		return array_push($this->_parts, $part . "\n");
	}

	public function show() {
		printf("Product consists of:\n");
		array_map('printf', $this->_parts);
	}
}

abstract class Builder {
	public abstract function buildPart1();
	public abstract function buildPart2();
	public abstract function getProduct();
}

class ConcreteBuilder extends Builder {
	private $_product;

	public function __construct() {
		$this->_product = new Product();
	}

	public function buildPart1() {
		$this->_product->add("Part1");
	}

	public function buildPart2() {
		$this->_product->add("Part2");
	}

	public function getProduct() {
		return $this->_product;
	}
}

class Director {
	public function __construct(Builder $builder) {
		$builder->buildPart1();
		$builder->buildPart2();
	}
}

class Client {
	public static function main() {
		$builder = new ConcreteBuilder();
		$director = new Director($builder);
		$product = $builder->getProduct();
		$product->show();
		$builder = null;
		$director = null;
		$product = null;
	}
}

Client::main();

?>
