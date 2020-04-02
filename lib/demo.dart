///
/// build in data types
/// - All data types in Dart are Objects.
///
main(List<String> args) {
  // Numbers
  var num1 = 100; // type 'int'
  int num2 = 200;
  double num3 = 30.0;
  // float num4; [Error] dart语言没有float关键字，使用double
  print(
      "Numbers: num1=$num1, num2=$num2, num3=$num3, num1+num2=${num1 + num2}");

  //num1 = num3; [Error] A value of type 'double' can't be assigned to a variable of type 'int'
  num1 = num2; // 'var' 定义的变量首次赋值后类型就不可以改变了, num1为'int'类型

  print('');

  // Strings
  String name = "Dart";
  var company = "Google"; // type 'String'
  print("$company $name");

  // 多行文本
  String lines = 'hello \n'
      'dart \n'
      'Strings';
  print(lines);

  // 字符串可以用单引号，也可以用双引号
  var s1 = ' "Hello" ';
  var s2 = " 'Dart' ";
  var s3 = " \"Google\" ";
  print("$s1, $s2, $s3");

  print('');

  // bool
  bool isValid = true;
  var isAlive = false; // type 'bool'
  print("$isValid $isAlive");

  print('');

  // dynamic
  int number; // 未赋值的变量默认值为'null'
  print(number == null ? 'null' : 'not null');

  number = 123;
  dynamic obj = number;
  print("obj is 'int', value is $obj");

  obj = "Hello";
  print("obj is 'String', value is $obj");

  print('');

  // final
  final langName = 'Dart';
  //langName = 'Java'; [Error]  a final variable, can only be set once.

  // const
  const PI = 3.14;
  print('$langName, $PI');

  print('');

  var c1 = Circle(20.0);
  var c2 = Circle(30.0);
  print("c1: ${c1.radius}");
  print("c2: ${c2.radius}");
  print("PI: ${Circle.PI}");
}

class Circle {
  //const PI = 3.14; [Error] Only static fields can be declared as const.

  // 常量必须在定义时赋值
  static const PI = 3.14;
  // final 的变量可以在构造函数中赋值
  final double radius;

  Circle(this.radius);
}
