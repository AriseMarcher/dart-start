class Point {
  num x;
  num y;

  Point(this.x, this.y);
}

class ImmutablePoint {
  // 属性必须通过 final 声明
  final num x;
  final num y;

  // 常量构造函数，必须通过 const 声明
  const ImmutablePoint(this.x, this.y);
}

void main() {
  var p1 = new Point(8, 9);
  var p2 = new Point(8, 9);
  print(p1 == p2); // false

  // 常量构造函数，可以当作普通构造函数使用。
  var p3 = new ImmutablePoint(1, 3);
  var p4 = new ImmutablePoint(1, 3);
  print(p3 == p4); // false

  // 声明不可变对象，必须通过 const 关键字
  var p5 = const ImmutablePoint(1, 3);
  var p6 = const ImmutablePoint(1, 3);
  print(p5 == p6); // true

  var p7 = ImmutablePoint(1, 3);
  var p8 = ImmutablePoint(1, 3);
  print(p7 == p8); // false
}
