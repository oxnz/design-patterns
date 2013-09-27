<?php
namespace composite;
/**
 * 安全的合成模式的PHP实现
 */

/**
 * 抽象组件角色
 */
interface Component {
	/**
	 * 返回自己的实例
	 */
	public function getComposite();
	public function operate();
};

/**
 * 树枝组件角色
 */
class Composite implements Component {
	private $_composites;

	public function __construct() {
		$this->_composites = array();
	}

	public function getComposite() {
		return $this;
	}

	/**
	 * 示例方法，调用各个子对象的operation方法
	 */
	public function operate() {
		printf("Composite operation begin:\n");
		foreach ($this->_composites as $composite) {
			$composite->operate();
		}
		printf("Composite operation end:\n");
	}

	/**
	 * 聚集管理方法 添加一个子对象
	 * @param Component $component  子对象
	 */
	public function add(Component $component) {
		$this->_composites[] = $component;
	}

	/**
	 * 聚集管理方法 删除一个子对象
	 * @param Component $component  子对象
	 * @return boolean  删除是否成功
	 */
	public function remove(Component $component) {
		foreach ($this->_composites as $key => $row) {
			if ($component == $row) {
				unset($this->_composites[$key]);
				return TRUE;
			}
		}
		return FALSE;
	}

	/**
	 * 聚集管理方法 返回所有的子对象
	 */
	public function getChild() {
		return $this->_composites;
	}
}

class Leaf implements Component {
	private $_name;

	public function __construct($name) {
		$this->_name = $name;
	}

	public function operate() {
		printf("Leaf operation: %s\n", $this->_name);
	}

	public function getComposite() {
	}
}

class Client {
	public static function main() {
		$leaf1 = new Leaf('first leaf');
		$leaf2 = new Leaf('second leaf');

		$composite = new Composite();
		$composite->add($leaf1);
		$composite->add($leaf2);
		$composite->operate();

		$composite->remove($leaf2);
		$composite->operate();

		$composite->remove($leaf1);
		$leaf1 = null;
		$leaf2 = null;
		$composite = null;
	}
}

Client::main();

?>
