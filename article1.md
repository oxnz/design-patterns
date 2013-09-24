#聚合,组合,依赖

##1. 聚合：

是关联关系的一种特例，体现的是整体与部分拥有的关系，即 has-a 的关系，此时整体与部分之间可以分离。

	//学校  
	class School  
	{  
	};  
  
	//学生  
	class Student  
	{  
	private:  
	School* ps;  
	};  

可以看到 Student 类中包含了一个 School 类的对象指针，而且在创建一个Student 类对象时一定要对指针进行初始化，就好像当你上学时一定会有一个学校！这个时候，我们可以说 Student 的每一个对象都有一个School 的属性来标识它是属于哪个学校的！
但是两者之间并不存在“同生共死”的关系，也就是说当这个学生不存在的时候，学校还是有的！

##2. 组合：

也是关联关系的一种特例，体现在一种 contain - a 的关系，这种关系比聚合更强，整体与部分是不可分的。


	//眼  
	class Eye  
	{  
	};  
  
	//鼻  
	class Nose  
	{  
	};  
  
	//头  
	class Head  
	{	  
	private:  
	Eye  m_eye;  
	Nose m_nose;  
	};  

一个head ，一定会有 eye，nose 等。一旦 head 不存在了，eye nose 也没存在的意义了。即 head 拥有这些对象类。

##3. 依赖：

当一个对象负责构造另一个对象的实例，或者依赖另一个对象的服务时，这两个对象之间主要体现为依赖关系。

依赖关系表现在局部变量，方法的参数，以及对静态方法的调用。

	//苹果刀  
	class Knife  
	{  
	public:  
	paring(); //削东西  
	}  
  
	//苹果  	
	class Apple  
	{  
	};  
  
	//学生  
	class Student  
	{  
	void DoSomething();  
	void Eat(Apple* a){...}  
	};  
  
	Student::DoSomething()  
	{  
	Knife ke;  
	ke.paring();  
	}  

上面， 你不能把 apple 看成 student 的一种属性，不存在包含关系。试想哪个人一生下来就一定要吃苹果呢。

同样，student 每次做事 doSomething() 也不会只去削东西吧。
通过一个方法，并让 Apple 类指针做形参（引用也可以），这样子就实现了student 吃苹果的过程。为什么要用指针类型做形参？

因为 student 吃苹果并不只会影响 student 自己，当然苹果本身也会有一些变化，而这些变化都是通过传递过来的指针来间接调用 Apple 类的方法来实现的！