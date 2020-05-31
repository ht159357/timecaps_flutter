// 同时返回 String类型 和 int类型，不指定类型可以实现
// getData(value) => value;

// void main() {
//   print(getData(1)); // 1
//   print(getData('haroro')); // haroro
// }
// 泛型方法
T getData<T>(T value) => value;

// 泛型类
class arr<T> {
  List list = new List<T>();
  void add(T value) {
    this.list.add(value);
  }
}

// 泛型接口
abstract class something<T> {}

void main() {
  print(getData<int>(1));
  print(getData<String>('Haroro'));
  var arrString = new arr<String>();
  var arrInt = new arr<int>();
}
