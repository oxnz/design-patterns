<?php
/**
 * facade pattern
 *
 * subsystem	: KillVirus, ZipFile, EncryptFile
 * facade	: FileSystem
 */

class KillVirus {
	public function operate() {
		printf("%s operating ...\n", __CLASS__);
	}
}

class ZipFile {
	public function operate() {
		printf("%s operating ...\n", __CLASS__);
	}
}

class EncryptFile {
	public function operate() {
		printf("%s operating ...\n", __CLASS__);
	}
}

class FileSystem {
	private $_kv = null;
	private $_zf = null;
	private $_ef = null;

	public function __construct() {
		$this->_kv = new KillVirus();
		$this->_zf = new ZipFile();
		$this->_ef = new EncryptFile();
	}

	public function operate() {
		printf("%s operating ...\n", __CLASS__);
		$this->_kv->operate();
		$this->_zf->operate();
		$this->_ef->operate();
	}

	public function __destruct() {
		$this->_kv = null;
		$this->_zf = null;
		$this->_ef = null;
	}
}

class Client {
	public static function main() {
		$fileSys = new FileSystem();
		$fileSys->operate();
		$fileSys = null;
	}
}

Client::main();

?>
