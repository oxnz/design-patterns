<?php
/**
 * prototype pattern
 * @author: 0xnz
 * @update: Fri Sep 27 22:43:15 CST 2013
 */

interface Prototype {
	public function copy();
}

class ConcretePrototype implements Prototype {
	private $_name;

	public function __construct($name) {
		$this->_name = $name;
	}

	public function setName($name) {
		$this->_name = $name;
	}

	public function getName() {
		return $this->_name;
	}

	public function copy() {
		/**
		 * 深拷贝实现
		 */
		/*
		$serialize_obj = serialize($this);		//序列化
		$clone_obj = unserialize($serialize_obj);	//反序列化
		return $clone_obj;
		*/
		return clone $this;	//浅拷贝
	}
}

/* 测试深拷贝用的引用类 */
class Demo {
	public $array;
}

class Client {
	public static function main() {
		$demo = new Demo();
		$demo->array = array(1, 2);
		$obj1 = new ConcretePrototype($demo);
		$obj2 = $obj1->copy();

		var_dump($obj1->getName());
		var_dump($obj2->getName());

		$demo->array = array(3, 4);
		var_dump($obj1->getName());
		var_dump($obj2->getName());
		var_dump(($obj1 == $obj2));
	}
}

Client::main();

?>
