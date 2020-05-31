class A {
  void printA() {
    print('A');
  }
}

class B {
  void printA() {
    print('AB');
  }

  void printB() {
    print('B');
  }
}

class C {
  String info = 'Haroro';
  C(this.info);
  void printC() {
    print('C');
  }
}

class ABC extends C with A, B {
  ABC(String info) : super(info);
}

void main() {
  var ab = new ABC('Haroro 是智障');
  print(ab.info); // Haroro 是智障
  ab.printA(); // AB
  ab.printB(); // B

  print(ab is A); // true
  print(ab is B); // true
  print(ab is C); // true
}
