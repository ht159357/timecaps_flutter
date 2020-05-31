void main() {
  // 赋值时，会判断赋值类型，不同类型赋值会报错，类似TS的类型校验
  // String str = 'Haroro'; // String 类型变量声明
  // var varStr = 'Haroro'; // var 声明String
  // int num = 1; // int 类型变量声明
  // var varNum = 1; // var 声明int
  // // const 在编译阶段就确定的值
  // const double PI = 3.1415926; // const 声明常量
  // // final 为运行时常量，且final是惰性初始化，即在运行时第一次使用前才初始化
  // final int key = DateTime.now().millisecondsSinceEpoch; // final 声明常量

  // print(PI);
  // print(key);

  // String str1 = '1';
  // String str2 = "2";
  // print('$str1');
  // print("$str2");
  // print('$str1 $str2');

  // int a = 12;
  // double b = 12.000001;
  // bool flag = true;
  // print(a);
  // print(b);
  // print(flag);

  // var person = {
  //   'name': 'haroro',
  //   'age': 26,
  //   'tag': ['搬砖', '写代码', '民命']
  // };
  // print(person['name'] is String ? 'String' : 'Int');
  // print(person['age'] is String ? 'String' : 'Int');

  // +、 - 、* 、/ 、 ~/ 、 %
  // var i = 0;
  // print(i++);
  // print(++i);

  // int a = 5;
  // int b = 2;
  // print(a + b); // 7
  // print(a - b); // 3
  // print(a * b); // 10
  // print(a / b); // 2.5
  // print(a ~/ b); // 2 // 取整
  // print(a % b); // 2 // 取余

  // int a = 1;
  // int b = 2;
  // print(a.isNaN); // false
  // print(a.isOdd); // true
  // print(b.isEven); // true

  // abs()、round()、floorl()、ceil()、toInt()、toDouble()
  // int a = -1;
  // double b = 1.1;
  // double c = 1.6;
  // print(a.abs()); // 1 // 绝对值
  // print(b.round()); // 1 // 四舍五入
  // print(c.round()); // 2
  // print(b.floor()); // 1 // 向下取整
  // print(c.floor()); // 1
  // print(b.ceil()); // 2 // 向上取整
  // print(c.ceil()); // 2
  // print(b.toInt()); // 1 // 转为int类型
  // print(c.toInt()); // 1
  // print(a.toDouble()); // -1.0 // 转为double类型

  // // String 转为 int 类型
  // var one = int.parse('1');
  // // var isNaNString = int.parse('haroro'); // 报错
  // print(one == 1); // true

  // // String 转为 double 类型
  // var onePointOne = double.parse('1.1');
  // var notDouble = double.parse('1');
  // print(onePointOne == 1.1); // true
  // print(notDouble == 1.0); // true

  // // int 转为 String 类型
  // String oneAsString = 1.toString();
  // print(oneAsString == '1'); // true

  // // double 转为 String 类型
  // String piAsString = 3.14159.toStringAsFixed(2);
  // print(piAsString == '3.14'); // true

  // String str = '单引号中的"双引号"';
  // String str1 = "双引号中的'单引号'";
  // print(str); // 单引号中的"双引号"
  // print(str1); // 双引号中的'单引号'

  // String str2 = '单引号中的 \'单引号\'';
  // String str3 = "双引号中的 \"双引号\"";
  // print(str2); // 单引号中的 '单引号'
  // print(str3); // 双引号中的 "双引号"

  // // 使用的是空格拼接，多个空格也可以，也可以换行，也可以单双引号混用
  // var a = 'Haroro';
  // String str1 = '拼接可以'    "无视空格"     '进行拼接~'
  // "甚至是换行！${a}";
  // // 单引号多行文本
  // String str2 = '''
  //   haroro
  //   sunny
  //   timecaps
  // ''';

  // // 双引号多行文本
  // String str3 = """
  //   haroro
  //   sunny
  //   timecaps
  // """;
  // // 正常使用
  // String str4 = "正" + "使用 + 来拼接";
  // print(str1);
  // print(str2);
  // print(str3);
  // print(str4);

  // // 断言是否为空
  // var str = '';
  // assert(str.isEmpty);

  // // 断言是否为0
  // var numData = 0;
  // assert(numData <= 0);

  // // 断言是否为null
  // var nullData;
  // assert(nullData == null);

  // // 断言是否为NaN
  // var naNData = 0 / 0;
  // assert(naNData.isNaN);

  // // 使用构造创建
  // var list = new List();
  // //创建一个int类型的list
  // List intlist = new List<int>();
  // // 创建一个常量List， 不可以改变的List
  // List constList = const [10, 7, 23];

  // var list = [1, 5, 2, 3, 4, 6, 7];
  // // 数组长度
  // print(list.length); // 7
  // // 查询下标
  // print(list[0]); // 1
  // // list.add("value"); // 报错，如果原来list的成员全部同一类型，插入值类型必须是声明的成员同一种类型
  // // 设置指定下标的值
  // list[0] = 0;
  // print(list[0]); // 0
  // // 插入至指定位置值
  // list.insert(0, 1);
  // print(list); // [1, 0, 5, 2, 3, 4, 6, 7]
  // // 删除数组中指定的值
  // list.remove(7);
  // print(list); // [1, 0, 5, 2, 3, 4, 6]
  // // 删除数值指定下标
  // list.removeAt(0);
  // print(list); // [0, 5, 2, 3, 4, 6]
  // print(list.indexOf(7)); // -1 // 查询值的位置。查询不到返回 -1，否则返回位置下标。
  // print(list.indexOf(0)); // 0

  // // 创建Map
  // var language = {'1': 'dart', '2': 'js'};
  // // 创建不可变的 Map
  // var constLanguage = const {'1': 'dart', '2': 'js'};
  // // 通过构造器创建
  // var newLanguage = new Map();
  // language['3'] = 'java';
  // print(language['3']); // java
  // print(language['lastont']); // null
  // print(language.length);
//   // 创建Map
//   var map = {
//     'name': 'haroro',
//     'age': 26,
//   };
//   // 获取长度
//   print(map.length); // 2
//   // 判断是否为空
//   print(map.isEmpty); // false
//   print(map.isNotEmpty); // true
//   // 获取到所有的 key
//   print(map.keys); // (name, age)
//   // 获取到所有的 values
//   print(map.values); // (haroro, 26
//   // 判断是否包含某个key
//   print(map.containsKey("key")); // false
//   // 判断是否包含某个value
//   print(map.containsValue("value")); // false
//   // 添加一个新的元素进去
//   map['work'] = '搬砖';
//   print(map); // {name: haroro, age: 26, work: 搬砖}
//   // 循环打印
//   map.forEach((key, value) => getMap(key, value));
// }
// void getMap(key, value) {
//   print("${key}: ${value}");
  // a 的数据类型可以随意改变，这种类型就是 dynamic
  // var a;
  // a = 10;
  // a = "dart";

  // // 这里我们使用 dynamic 声明
  // dynamic d = 10;
  // d = 'dart';

  // var a;
  // var b = a ?? 10;
  // print(b);

  // String str = null;
  // var num = double.parse(str ?? '0.0');
  // print(num);

  // for (int i = 0; i < 100; i++) {
  //   print(i);
  //   if (i > 10) {
  //     break;
  //   } else {
  //     continue;
  //   }
  // }

  // int i = 0;
  // do {
  //   i++;
  // } while (i < 10);
  // print(i);

  // var s = new Set();
  // s.add('HUAWEI');
  // s.add('HUAWEI');
  // s.add('iPhone');
  // print(s); // {HUAWEI, iPhone}
  // print(s.toList()); // [HUAWEI, iPhone] 转换为List集合

  // List arr = ['HUAWEI', 'xiaomi', 'meizu', 'iPhone', 'HUAWEI'];
  // print(arr); // [HUAWEI, xiaomi, meizu, iPhone, HUAWEI] 有重复对象
  // print(arr.toSet()); // {HUAWEI, xiaomi, meizu, iPhone} 去除重复集合

  // int getAge() {
  //   return 26;
  // }

  // String getName() {
  //   return 'Haroro';
  // }

  // double getMoney() {
  //   return 28.99;
  // }

  // print('${getName()}今年${getAge()}岁了，但是存款只有${getMoney()}块。');

  // String talkName(String name, [int age, String sex = '男']) {
  //   return age != null ? '$name 年龄：$age，性别：$sex' : '$name 年龄：保密，性别：$sex';
  // }

  // print(talkName('Haroro'));
  // print(talkName('Sunny', 18, '女'));

  // String talkName(String name, {int age, String sex = '男'}) {
  //   return age != null ? '$name 年龄：$age，性别：$sex' : '$name 年龄：保密，性别：$sex';
  // }

  // print(talkName('Haroro', sex: '女'));
  // print(talkName('Sunny', age: 18));

  // sayHello() {
  //   print('Hello');
  //   return () => {print('callback')};
  // }

  // doSomething(fn) {
  //   fn();
  // }

  // doSomething(sayHello());

  // List fts = [12, 34, 56, 78];
  // var newList = fts.map((element) => element > 50 ? element * 2 : element);
  // print(newList.toList());

  var count = (() {
    int index = 0;
    int num = 0;
    return () {
      print(++num);
      return ++index;
    };
  })();
  count();
  count();
  count();
  count();
}
