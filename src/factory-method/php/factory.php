<?php
/**
 * factory-method pattern
 * @author: 0xnz
 * @update:Fri Sep 27 22:23:39 CST 2013
 */

/**
 * 抽象工厂角色
 */
interface Creator {
	public function factoryMethod();
}

class ConcreteCreatorA implements Creator {
	/**
	 * 工厂方法 返回具体 产品A
	 * @return ConcreteProductA
	 */
	public function factoryMethod() {
		return new ConcreteProductA();
	}
}

class ConcreteCreatorB implements Creator {
	public function factoryMethod() {
		return new ConcreteProductB();
	}
}

/* 抽象产品角色 */
interface Product {
	public function operate();
}

class ConcreteProductA implements Product {
	/**
	 * 接口方法实现 输出特定字符串
	 */
	public function operate() {
		printf("%s %s\n", __CLASS__, __FUNCTION__);
	}
}

class ConcreteProductB implements Product {
	/**
	 * 接口方法实现 输出特定字符串
	 */
	public function operate() {
		printf("%s %s\n", __CLASS__, __FUNCTION__);
	}
}

class Client {
	public static function main() {
		$creatorA = new ConcreteCreatorA();
		$productA = $creatorA->factoryMethod();
		$productA->operate();

		$creatorB = new ConcreteCreatorB();
		$productB = $creatorB->factoryMethod();
		$productB->operate();
	}
}

Client::main();
?>
