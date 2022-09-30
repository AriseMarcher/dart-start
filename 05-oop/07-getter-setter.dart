class Circle {
  final double PI = 3.14;

  num r;

  Circle(this.r);

  num calculateArea() {
    return this.PI * this.r * this.r;
  }

  // 使用 get 声明的方法，不能有小括号
  num get getArea {
    return this.PI * this.r * this.r;
  }

  // Setter
  set setR(value) {
    this.r = value;
  }
}

void main() {
  var c1 = new Circle(10);
  print(c1.calculateArea()); // 314.0
  print(c1.getArea); // 314.0

  c1.setR = 20;
  print(c1.getArea); // 1256.0
}
