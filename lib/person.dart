// person.dart
class Person {
  String _info; // 私有属性
  String name;
  int age;

  Person({String name, int age}) {
    this.name = name;
    this.age = age;
    this._info = '${this.name} is ${this.age} old';
  }

  void printName() {
    print('${this.name} --- ${this.age}');
  }

  String sayOk() {
    String str = '${this.age}岁的${this.name}说OKK！';
    print(str);
    return str;
  }

  String getInfo() {
    // 通过暴露方法来获取私有属性
    return this._info;
  }

  // 私有方法
  void _privateInfo() {
    print(this._info);
  }

  // 将私有方法返回
  Function sayInfoFun() {
    return this._privateInfo;
  }

  // 执行稀有方法
  void sayInfo() {
    this._privateInfo();
  }
}
