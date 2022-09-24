class Point1 {
  dynamic x, y;

  // 声明普通构造函数
  Point1() {
    print('默认构造函数，实例化第一个被调用');
    // this可以省略
    // this.x = 0;
    // this.y = 0;

    // 当命名指向有歧义时，this不能省略
    x = 0;
    y = 0;
  }
}

class Point2 {
  dynamic x, y;

  // 声明普通构造函数
  Point2(num x, num y) {
    print('默认构造函数，实例化第一个被调用');
    // this可以省略
    // this.x = 0;
    // this.y = 0;

    // 当命名指向有歧义时，this不能省略
    x = x;
    y = y;
  }
}

class Point3 {
  dynamic x, y;
  Point3(this.x, this.y);
}

void main() {
  var p1 = new Point1(); // 默认构造函数，实例化第一个被调用

  var p2 = new Point2(12, 13);

  var p3 = new Point3(12, 13);
  print(p3.x); // 12
}
