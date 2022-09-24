// Dart 中声明函数，不需要 function 关键字
void printInfo() {
  print('hello world');
}

// 返回值与函数声明的类型要一致
int getNumber() {
  return 1;
}

void main() {
  // 调用函数
  printInfo(); // hello world

  print(getNumber()); // 1

  // 匿名函数
  var myPrint = (value) {
    print(value);
  };

  List fruits = ['apple', 'banner'];
  fruits.forEach((element) {
    myPrint(element);
  });

  // 箭头函数
  // 箭头函数中不能写结束的分号 只能一行
  fruits.forEach((element) => {myPrint(element)});

  // 立即执行函数
  ((int n) {
    print(n);
  })(17);
}
