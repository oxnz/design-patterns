<?php
/**
 * decorator pattern
 * @author: 0xnz
 * @update: Fri Sep 27 23:09:24 CST 2013
 */

/**
 * 抽象构件角色
 */
interface Component {
	public function operate();
}

/* 装饰角色 */
abstract class Decorator implements Component {
	protected $_component;

	public function __construct(Component $component) {
		$this->_component = $component;
	}

	public function operate() {
		$this->_component->operate();
	}
}

/* 具体装饰类A */
class ConcreteDecoratorA extends Decorator {
	public function __construct(Component $component) {
		parent::__construct($component);
	}

	public function operate() {
		parent::operate();	//调用装饰类的操作
		$this->extraOperate();	//新增加的操作
	}

	/* 新增加的操作 */
	public function extraOperate() {
		printf("%s %s\n", __CLASS__, __FUNCTION__);
	}
}

/* 具体装饰类B */
class ConcreteDecoratorB extends Decorator {
	public function __construct(Component $component) {
		parent::__construct($component);
	}

	public function operate() {
		parent::operate();	//调用装饰类的操作
		$this->extraOperate();	//新增加的操作
	}

	/* 新增加的操作 */
	public function extraOperate() {
		printf("%s %s\n", __CLASS__, __FUNCTION__);
	}
}

class ConcreteComponent implements Component {
	public function operate() {
		printf("%s %s\n", __CLASS__, __FUNCTION__);
	}
}

class Client {
	public static function main() {
		$component = new ConcreteComponent();
		$decoratorA = new ConcreteDecoratorA($component);
		$decoratorB = new ConcreteDecoratorB($decoratorA);

		$decoratorA->operate();
		$decoratorB->operate();
	}
}

Client::main();

?>
