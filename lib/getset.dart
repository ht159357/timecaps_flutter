void main() {
  var r = new Rect(10, 10);
  // var r = new Rect();
  print(r.area); // 100
  r.areaHeight = 20;
  r.areaWidth = 20;
  print(r.area); // 400
}

class Rect {
  num width;
  num height;

  Rect(this.width, this.height);
  // Rect(): height = 1, width = 1 { print('${this.width}, ${this.height}'); } // 可以在实例化之前初始化变量 var r = new Rect();

  get area {
    return this.width * this.height;
  }

  set areaHeight(value) {
    this.height = value;
  }

  set areaWidth(value) {
    this.width = value;
  }
}
