void main() {
  Child sunny = new Child('sunny', 10, 'boy');
  sunny.sayName();
}

class Person {
  String name = 'haroro';
  int age = 18;
  Person(this.name, this.age) {
    print('父类构造器');
  }
  void sayName() {
    print('$name 现在 $age 岁。');
  }
}

class Child extends Person {
  String sex;
  Child(String name, int age, String sex) : super(name, age) {
    this.sex = sex;
    print('子类构造器');
  }

  // 覆写父类方法时，建议使用关键字 @override
  @override
  void sayName() {
    print('${this.name}现在${this.age}岁，是个${this.sex}');
  }
}
