<?php
/**
 * template pattern
 */

/**
 *
 * 抽象模板角色
 * 定义抽象方法作为顶层逻辑的组成部分，由子类实现
 * 定义模板方法作为顶层逻辑的架子，调用基本方法组装顶层逻辑
 */
abstract class AbstractClass {
	/**
	 * 模板方法 调用基本方法组装顶层逻辑
	 */
	public function templateMethod() {
		printf("%s begin\n", __FUNCTION__);
		$this->primitiveOperation1();
		$this->primitiveOperation2();
		printf("%s end\n", __FUNCTION__);
	}

	/**
	 * 基本方法1,2
	 */
	abstract protected function primitiveOperation1();
	abstract protected function primitiveOperation2();
}

/**
 * 具体模板角色
 * 实现父类的抽象方法
 */
class ConcreteClass extends AbstractClass {
	/**
	 * 基本方法1
	 */
	protected function primitiveOperation1() {
		printf("%s\n", __FUNCTION__);
	}

	protected function primitiveOperation2() {
		printf("%s\n", __FUNCTION__);
	}
}

class Client {
	public static function main() {
		$cls = new ConcreteClass();
		$cls->templateMethod();
	}
}

Client::main();

?>
