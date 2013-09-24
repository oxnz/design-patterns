#Private class data pattern

##Intent

The private class data design pattern seeks to reduce exposure of attributes by limiting their visibility. It reduces the number of class attributes by encapsulating them in single Data object. It allows the class designer to remove write privilege of attributes that are intended to be set only during construction, even from methods of the target class.

##Motivation

A class may expose its attributes (class variables) to manipulation when manipulation is no longer desirable, e.g. after construction. Using the private class data design pattern prevents that undesirable manipulation.

A class may have one-time mutable attributes that cannot be declared final. Using this design pattern allows one-time setting of those class attributes.

The motivation for this design pattern comes from the design goal of protecting class state by minimizing the visibility of its attributes (data).

##Applicability

This design pattern applies to any class in any object oriented language.

##Consequences

The consequences of using this design pattern include the following:

* Controlling write access to class attributes;
* Separating of data from methods that use it;
* Encapsulating class attribute (data) initialization; and
* Providing new type of final: final after constructor.

##Implementation

The private class data design pattern solves the problems above by extracting a data class for the target class and giving the target class instance an instance of the extracted data class.

* The data class exposes each attribute (variable or property) through a getter.
* The data class exposes each attribute that must change after construction through a setter.

##Sample code

The following C# code illustrates an opportunity to use the private class data design pattern:

	 public class Circle
	 {
	   private double radius;
	   private Color color;
	   private Point origin;
	   public Circle(double radius, Color color, Point origin)
	   {
	     this.radius = radius;
	     this.color = color;
	     this.origin = origin;
	   }
	   public double Circumference
	   {
	     get { return 2 * Math.PI * this.radius; }
	   }
	   public double Diameter
	   {
	     get { return 2 * this.radius; }
	   }
	   public void Draw(Graphics graphics)
	   {
	     //...
	   }
	 }
The attributes radius, color, and origin above should not change after the Circle() constructor. Note that the visibility is already limited by scoping them as private, but doing methods of class Circle can still modify them.

The excess exposure of the attributes creates a type of (undesirable) coupling between methods that access those attributes. To reduce the visibility of the attributes and thus reduce the coupling, implement the private class data design pattern, as follows:

	 public class CircleData
	 {
	   private double radius;
	   private Color color;
	   private Point origin;
	   public CircleData(double radius, Color color, Point origin)
	   {
	     this.radius = radius;
	     this.color = color;
	     this.origin = origin;
	   }
	   public double Radius
	   {
	     get { return this.radius; }
	   }
	   public Color Color
	   {
	     get { return this.color; }
	   }
	   public Point Origin
	   {
	     get { return this.origin; }
	   }
	 }
	 public class Circle
	 {
	   private CircleData circleData;
	   public Circle(double radius, Color color, Point origin)
	   {
	     this.circleData = new CircleData(radius, color, origin);
	   }
	   public double Circumference
	   {
	     get { return 2 * this.circleData.Radius * Math.PI; }
	   }
	   public double Diameter
	   {
	     get { return this.circleData.Radius * 2; }
	   }
	   public void Draw(Graphics graphics)
	   {
	     //...
	   }
	 }

The Circle class in the resulting code has an attribute of type CircleData to encapsulate the attributes previously exposed to all of the methods of the class Circle. That encapsulation prevents methods from changing the attributes after the Circle() constructor. Note, however, that any method of Circle can still retrieve the values of the encapsulated attributes.
