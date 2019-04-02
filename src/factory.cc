/*
 * Filename:	factory.cc
 *
 * Author:		Oxnz
 * Email:		yunxinyi@gmail.com
 * Created:		[2015-03-17 15:33:07 CST]
 * Last-update:	2015-03-17 15:33:07 CST
 * Description: anchor
 *
 * Version:		0.0.1
 * Revision:	[NONE]
 * Revision history:	[NONE]
 * Date Author Remarks:	[NONE]
 *
 * License: 
 * Copyright (c) 2013 Oxnz
 *
 * Distributed under terms of the [LICENSE] license.
 * [license]
 *
 */

#include <iostream>
#include <vector>
#include <map>

using namespace std;

class Shape {
public:
	virtual void draw() = 0;
	virtual void erase() = 0;
	virtual ~Shape() {}
};

class ShapeFactory {
	virtual Shape* create() = 0;
	static map<string, ShapeFactory*> factories;
public:
	virtual ~ShapeFactory() {}
	friend class ShapeFactoryInitializer;
	class BadShapeCreation : public logic_error {
	public:
		BadShapeCreation(string type)
			: logic_error("Cannot create type " + type) { }
	};
	static Shape* createShape(const string& id) throw(BadShapeCreation) {
		if (factories.find(id) != factories.end())
			return factories[id]->create();
		else
			throw BadShapeCreation(id);
	}
};
// Define the static object
map<string, ShapeFactory*> ShapeFactory::factories;

class Circle : public Shape {
	Circle() {} // private constructor
	friend class ShapeFactoryInitializer;
	class Factory;
	friend class Factory;
	class Factory : public ShapeFactory {
	public:
		Shape* create() { return new Circle; }
		friend class ShapeFactoryInitializer;
	};
public:
	void draw() { cout << "Circle::draw" << endl; }
	void erase() { cout << "Circle::erase" << endl; }
	~Circle() { cout << "Circle::~Circle" << endl; }
};

class Square : public Shape {
	Square() {}
	friend class ShapeFactoryInitializer;
	class Factory;
	friend class Factory;
	class Factory : public ShapeFactory {
	public:
		Shape *create() { return new Square; }
		friend class ShapeFactoryInitializer;
	};
public:
	void draw() { cout << "Square::draw" << endl; }
	void erase() { cout << "Square::erase" << endl; }
	~Square() { cout << "Square::~Square" << endl; }
};

class ShapeFactoryInitializer {
	static ShapeFactoryInitializer si;
	ShapeFactoryInitializer() {
		ShapeFactory::factories["Circle"] = new Circle::Factory;
		ShapeFactory::factories["Square"] = new Square::Factory;
	}
	~ShapeFactoryInitializer() {
		for (auto p : ShapeFactory::factories)
			delete p.second;
	}
};

// static memeber definition
ShapeFactoryInitializer ShapeFactoryInitializer::si;

char* sl[] = { "Circle", "Square", "Square", "Circle", "Circle", "Square" };

int main() {
	int ret = 0;
	vector<Shape*> shapes;
	try {
		for (size_t i = 0; i < sizeof sl / sizeof sl[0]; ++i)
			shapes.push_back(ShapeFactory::createShape(sl[i]));
	} catch (ShapeFactory::BadShapeCreation e) {
		cout << e.what() << endl;
		ret = 1;
		goto clean;
	}
	for (auto p : shapes) {
		p->draw();
		p->erase();
	}
clean:
	for (auto p : shapes)
		delete p;
	return ret;
}
