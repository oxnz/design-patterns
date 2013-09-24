#design-patterns

design patterns in serveral languages

In software engineering, a *design pattern* is a general repeatable solution to a commonly occurring problem in software design. A design pattern isn't a finished design that can be transformed directly into code. It is a description or template for how to solve a problem that can be used in many different situations.

###Uses of Design Patterns

Design patterns can speed up the development process by providing tested, proven development paradigms. Effective software design requires considering issues that may not become visible until later in the implementation. Reusing design patterns helps to prevent subtle issues that can cause major problems and improves code readability for coders and architects familiar with the patterns.

Often, people only understand how to apply certain software design techniques to certain problems. These techniques are difficult to apply to a broader range of problems. Design patterns provide general solutions, documented in a format that doesn't require specifics tied to a particular problem.

In addition, patterns allow developers to communicate using well-known, well understood names for software interactions. Common design patterns can be improved over time, making them more robust than ad-hoc designs.

##Creational design patterns 创建

This design patterns is all about class instantiation. This pattern can be further divided into class-creation patterns and object-creational patterns. While class-creation patterns use inheritance effectively in the instantiation process, object-creation patterns use delegation effectively to get the job done.

* [Abstract Factory](./src/abstract-factory/abstract-factory.md)
>Creates an instance of several families of classes
* [Builder](./src/builder/builder.md)
>Separates object construction from its representation
* [Factory Method](./src/factory-method/factory-method.md)
>Creates an instance of several derived classes
* Object Pool
>Avoid expensive acquisition and release of resources by recycling objects that are no longer in use
* [Prototype](./src/prototype/prototype.md)
>A fully initialized instance to be copied or cloned
* [Singleton](./src/singleton/singleton.md)
>A class of which only a single instance can exist

##Structual design patterns 结构

This design patterns is all about Class and Object composition. Structural class-creation patterns use inheritance to compose interfaces. Structural object-patterns define ways to compose objects to obtain new functionality.

* [Adapter](./src/adapter/adapter.md)
>Match interfaces of different classes
* [Bridge](./src/bridge/bridge.md)
>Separates an object’s interface from its implementation
* [Composite](./src/composite/composite.md)
>A tree structure of simple and composite objects
* [Decorator](./src/decorator/decorator.md)
>Add responsibilities to objects dynamically
* [Facade](./src/facade/facade.md)
>A single class that represents an entire subsystem
* [Flyweight](./src/flyweight/flyweight.md)
>A fine-grained instance used for efficient sharing
* [Private Class Data](./src/private-class-data/private-class-data.md)
>Restricts accessor/mutator access
* [Proxy](./src/proxy/proxy.md)
>An object representing another object

##Behavioral design patterns 行为

This design patterns is all about Class's objects communication. Behavioral patterns are those patterns that are most specifically concerned with communication between objects.

* [Chain of responsibility](./src/chain-of-responsibility/chain-of-responsibility.md)
>A way of passing a request between a chain of objects
* [Command](./src/command/command.md)
>Encapsulate a command request as an object
* [Interpreter](./src/interpreter/interpreter.md)
>A way to include language elements in a program
* [Iterator](./src/iterator/iterator.md)
>Sequentially access the elements of a collection
* [Mediator](./src/mediator/mediator.md)
>Defines simplified communication between classes
* [Memento](./src/memento/memento.md)
>Capture and restore an object's internal state
* [Null Object](./src/null-object/null-object.md)
>Designed to act as a default value of an object
* [Observer](./src/observer/observer.md)
>A way of notifying change to a number of classes
* [State](./src/state/state.md)
>Alter an object's behavior when its state changes
* [Strategy](./src/strategy/strategy.md)
>Encapsulates an algorithm inside a class
* [Template method](./src/template/template.md)
>Defer the exact steps of an algorithm to a subclass
* [Visitor](./src/visitor/visitor.md)
>Defines a new operation to a class without change

##Criticism

The concept of design patterns has been criticized by some in the field of computer science.

###Targets the wrong problem

The need for patterns results from using computer languages or techniques with insufficient abstraction ability. Under ideal factoring, a concept should not be copied, but merely referenced. But if something is referenced instead of copied, then there is no "pattern" to label and catalog. Paul Graham writes in the essay [Revenge of the Nerds](http://www.paulgraham.com/icad.html).

Peter Norvig provides a similar argument. He demonstrates that 16 out of the 23 patterns in the Design Patterns book (which is primarily focused on C++) are simplified or eliminated (via direct language support) in Lisp or Dylan.

###Lacks formal foundations

The study of design patterns has been excessively ad hoc, and some have argued that the concept sorely needs to be put on a more formal footing. At oopsla 1999, the Gang of Four were (with their full cooperation) subjected to a show trial, in which they were "charged" with numerous crimes against computer science. They were "convicted" by ⅔ of the "jurors" who attended the trial.

###Leads to inefficient solutions

The idea of a design pattern is an attempt to standardize what are already accepted best practices. In principle this might appear to be beneficial, but in practice it often results in the unnecessary duplication of code. It is almost always a more efficient solution to use a well-factored implementation rather than a "just barely good enough" design pattern.

###Does not differ significantly from other abstractions

Some authors allege that design patterns don't differ significantly from other forms of abstraction, and that the use of new terminology (borrowed from the architecture community) to describe existing phenomena in the field of programming is unnecessary. The Model-View-Controller paradigm is touted as an example of a "pattern" which predates the concept of "design patterns" by several years. It is further argued by some that the primary contribution of the Design Patterns community (and the Gang of Four book) was the use of Alexander's pattern language as a form of documentation; a practice which is often ignored in the literature.

