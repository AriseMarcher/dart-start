// 全局变量

var globalNum = 100;
void main() {
  printInfo() {
    var localNum = 10;
    print(localNum); // 10
    print(globalNum); // 100 可以在函数作用域中，访问全局变量
  }

  printInfo();
  // print(localNum); // 不能在全局作用域中，访问局部变量

  // 闭包

  parent() {
    var money = 5000;
    return () {
      money -= 200;
      print(money);
    };
  }

  var p1 = parent();
  p1(); // 4800
  p1(); // 4600
  p1(); // 4400
}
