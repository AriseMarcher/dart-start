void main() {
  // 必填函数
  String userInfo(String name) {
    return '你好：$name';
  }

  // The name 'userInfo' is already defined.
  // Try renaming one of the declarations.
  // String userInfo(String name) {
  //   return '你好：$name';
  // }

  String res = userInfo('xiaoming');
  print(res); // 你好：xiaoming

  // 可选参数
  String userInfo2(String name, [int age = 0]) {
    return '你好：$name,年龄：$age';
  }

  print(userInfo2('张三')); // 你好：张三,年龄：0
  print(userInfo2('张三', 18)); // 你好：张三,年龄：18

  // 命名函数
  String userInfo3(String name, {int age = 0}) {
    return '你好：$name,年龄：$age';
  }

  // 命名参数调用时，需要与声明时的形参一致
  String res3 = userInfo3('张三', age: 20);
  print(res3); // 你好：张三,年龄：20

  // 函数参数
  var myPrint = (value) {
    print(value);
  };

  List fruits = ['apple', 'banner'];
  // 将匿名函数 myPrint 传递给函数forEach
  fruits.forEach(myPrint);
}
