// 当做接口 接口就是约定以及规范
abstract class Db {
  String uri;
  add(Object data); // 可以传入参数
  update();
  delete();
}

class MySQL implements Db {
  @override
  String uri;

  MySQL(this.uri);

  @override
  add(Object data) {
    // 子类也需要传入参数
    print('data:${data.toString()} \nadd success');
  }

  @override
  delete() {
    print('delete success');
  }

  @override
  update() {
    print('update success');
  }
}

void main() {
  Db mysql = new MySQL('127.0.0.1:3000');
  mysql.add({'a': 1});
}
