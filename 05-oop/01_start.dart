// 声明类
class Person {
  // 类的属性
  String name = '张三';

  // 类的方法
  void sayName() {
    print('the name is $name');
  }
}

void main() {
  // 实例化类 然后得到一个对象
  Person p1 = new Person();
  p1.sayName(); // the name is 张三
  print(p1.name); // 张三

  // Dart 中所有的内容都是对象
  Map m1 = new Map();
  print(m1.length); // 0
  m1.addAll({'name': 'lisi', 'age': 20});
  print(m1.length); // 2
}
