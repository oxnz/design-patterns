<?php

abstract class Nokia {
	public function call($number) {
		printf("Using a NOKIA calling %s\n", $number);
	}
}

class Lumia1520 extends Nokia {
	public function call($number) {
		printf("Using a Lumia 1520 calling %s\n", $number);
	}
}


class Factory {
	public static function createNokia($modelName) {
		if ($modelName == "Lumia1520") {
			return new Lumia1520();
		} else {
			return new Nokia();
		}
	}
}

class Client {
	public static function main() {
		$nokia = Factory::createNokia("Lumia1520");
		$nokia->call("911");
	}
}

Client::main();
?>
