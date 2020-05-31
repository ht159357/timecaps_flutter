abstract class Animal {
  eat(); // 抽象方法
}

class Dog extends Animal {
  // 抽象方法在子类中必须要实现
  @override
  eat() {
    print('Dog在吃骨头~');
  }

  run() {
    print('Dog is Go');
  }
}

void main() {
  // Animal a = new Animal(); // 无法直接被实例化
  // 类型定义为子类，子类实例化可以调用子类的新方法
  Dog a = new Dog();
  a.eat(); // Dog在吃骨头~
  a.run(); // Dog is Go

  // 类型定义为父类，子类实例化只能调用父类定义的方法
  Animal b = new Dog();
  b.eat(); // Dog在吃骨头~
  // b.run(); // 报错，只能调用父类定义的方法
}
