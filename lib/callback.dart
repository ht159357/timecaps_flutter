import 'person.dart';

void main() {
  var haroro = new Person(name: 'haroro', age: 18);
  haroro.sayInfoFun()(); // haroro is 18 old
  haroro.sayInfo(); // haroro is 18 old
}
