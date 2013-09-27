#!/usr/bin/php
<?
/**
 * Singleton pattern
 *
 * this是指向当前对象的指针
 * self是指向当前类的指针
 * 也就是self是不指向任何已经实例化的对象，一般self使用来指向类中的静态变量。
 * 假如我们使用类里面静态（一般用关键字static）的成员，我们也必须使用self来
 * 调用。还要注意使用self来调用静态变量必须使用:: (域运算符号)
 * parent是指向父类的指针
 */

class Singleton {
	static private $_instance = null;

	private function __construct() {
		printf("private constructor should be called only once.\n");
	}

	static public function getInstance() {
		if (is_null(self::$_instance)) {
			self::$_instance = new Singleton();
		}
		return self::$_instance;
	}

	public function operate() {
		var_dump(self::$_instance);
	}
}

//$obj = new Singleton();  // will fail
$obj = Singleton::getInstance();
var_dump($obj);
$obj->operate();

$obj1 = Singleton::getInstance();
var_dump(($obj == $obj1));
