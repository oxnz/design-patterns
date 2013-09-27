<?php
/**
 * bridge pattern
 * @author: 0xnz
 * @update:Fri Sep 27 23:01:58 CST 2013
 */

/*
 * 抽象化角色
 * 抽象化给出的定义，并保存一个对实现化对象的引用。
 */
abstract class Abstraction {
	/* 对实现化对象的引用 */
	protected $imp;

	public function operate() {
		$this->_imp->operateImp();
	}
}

/**
 * 修正抽象化角色
 * 扩展抽象化角色，改变和修正父类对抽象化的定义。
 */
class RefinedAbstraction extends Abstraction {
	public function __construct(Implementor $imp) {
		$this->_imp = $imp;
	}

	/* 操作方法在修正抽象化角色中的实现 */
	public function operate() {
		printf("%s %s\n", __CLASS__, __FUNCTION__);
		$this->_imp->operateImp();
	}
}

/**
 * 实现化角色
 * 给出实现化角色的接口，但不给出具体的实现。
 */
abstract class Implementor {
	public abstract function operateImp();
}

/**
 * 具体化角色A
 * 给出实现化角色接口的具体实现
 */
class ConcreteImplementorA extends Implementor {
	public function operateImp() {
		printf("%s %s\n", __CLASS__, __FUNCTION__);
	}
}

class ConcreteImplementorB extends Implementor {
	public function operateImp() {
		printf("%s %s\n", __CLASS__, __FUNCTION__);
	}
}

class Client {
	public static function main() {
		$abstraction = new RefinedAbstraction(new ConcreteImplementorA());
		$abstraction->operate();

		$abstraction = new RefinedAbstraction(new ConcreteImplementorB());
		$abstraction->operate();
	}
}

Client::main();

?>
