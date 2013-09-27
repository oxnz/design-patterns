<?php
/**
 * memento pattern
 */

/**
 * 发起人(Originator)角色
 */
class Originator {
	private $_state = null;

	public function __construct() {
		$this->_state = '';
	}

	/**
	 * 创建备忘录
	 * @return Memento 包含当前状态的备忘录对象
	 */
	public function createMemento() {
		return new Memento($this->_state);
	}

	/**
	 * 将发起人恢复到备忘录对象记录的状态上
	 * @param Memento $memento
	 */
	public function restoreMemento(Memento $memento) {
		$this->_state = $memento->getState();
	}

	public function setState($state) {
		$this->_state = $state;
	}

	public function getState() {
		return $this->_state;
	}

	/**
	 * test method, show state
	 */
	public function showState() {
		printf("Original Status: %s\n", $this->getState());
	}
}

/**
 * 备忘录(Memento)角色
 */
class Memento {
	private $_state;

	public function __construct($state) {
		$this->setState($state);
	}

	public function getState() {
		return $this->_state;
	}

	public function setState($state) {
		$this->_state = $state;
	}
}

/**
 * 负责人(Caretaker)角色
 */
class Caretaker {
	private $_memento;

	public function getMemento() {
		return $this->_memento;
	}

	public function setMemento(Memento $memento) {
		$this->_memento = $memento;
	}
}

class Client {
	public static function main() {
		//创建目标对象
		$orig = new Originator();
		$orig->setState('open');
		$orig->showState();

		//创建备忘
		$memento = $orig->createMemento();

		//通过Caretaker保存此备忘
		$caretaker = new Caretaker();
		$caretaker->setMemento($memento);

		//改变目标对象的状态
		$orig->setState('close');
		$orig->showState();

		//还原操作
		$orig->restoreMemento($caretaker->getMemento());
		$orig->showState();
	}
}

Client::main();

?>
