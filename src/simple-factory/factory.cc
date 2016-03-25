/*
 * Filename:	factory.cc
 *
 * Author:		Oxnz
 * Email:		yunxinyi@gmail.com
 * Created:		[2015-03-17 01:38:42 CST]
 * Last-update:	2015-03-17 01:38:42 CST
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

using namespace std;

class Shape {
public:
	virtual void draw() = 0;
	virtual void erase() = 0;
	virtual ~Shape() {}
	class BadShapeCreation : public logic_error {
	public:
		BadShapeCreation(string type)
		: logic_error("Cannot create type " + type) {}
	};
	static Shape* factory(const string& type) throw(BadShapeCreation);
};

class Circle : public Shape {
	Circle() {}
	friend class Shape;
public:
	void draw() { cout << "Circle::draw" << endl; }
	void erase() { cout << "Circle::erase" << endl; }
	~Circle() { cout << "Circle::~Circle" << endl; }
};

class Square : public Shape {
	Square() {}
	friend class Shape;
public:
	void draw() { cout << "Square::draw" << endl; }
	void erase() { cout << "Square::erase" << endl; }
	~Square() { cout << "Square::~Square" << endl; }
};

Shape* Shape::factory(const string& type) throw(BadShapeCreation) {
	if (type == "Circle")
		return new Circle;
	else if (type == "Square")
		return new Square;
	else
		throw BadShapeCreation(type);
}

char* sl[] = { "Circle", "Square", "Square", "Circle", "Circle", "Circle",
	"Square" };

int main() {
	bool error = false;
	vector<Shape *> shapes;
	try {
		for (size_t i = 0; i < sizeof sl / sizeof sl[0]; ++i)
			shapes.push_back(Shape::factory(sl[i]));
	} catch (Shape::BadShapeCreation e) {
		cout << e.what() << endl;
		error = true;
		goto clean;
	}

	for (size_t i = 0; i < shapes.size(); ++i) {
		shapes[i]->draw();
		shapes[i]->erase();
	}
clean:
	for (auto p : shapes)
		delete p;
	return error ? 1 : 0;
}
