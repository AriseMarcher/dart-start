class Rect {
  // 第二种写法需要加上late
  // late int height;
  // late int width;

  int height;
  int width;

  // 这样写的话都是必填的
  // Rect(this.height, this.width);
  // Rect([int height = 2, int width = 10]) {
  //   this.height = height;
  //   this.width = width;
  //   print('${this.height} -- ${this.width}');
  // }

  // 初始化列表
  Rect()
      : height = 5,
        width = 8 {
    print('${this.height} -- ${this.width}');
  }
}

class Point {
  double x, y, z;

  Point(this.x, this.y, this.z);

  // 初始化列表的特殊用法（重定向构造函数）
  // 二维的点
  Point.twoD(double x, double y) : this(x, y, 0);
}

void main() {
  var r1 = new Rect();

  var p1 = new Point(1, 2, 3);
  print(p1.z); // 3.0

  var p2 = new Point.twoD(4, 5);
  print(p2.z); // 0.0
}
