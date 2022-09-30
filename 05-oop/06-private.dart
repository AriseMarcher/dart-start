import 'lib/Person.dart';

void main() {
  var p1 = new Person('xiaoming');
  print(p1.name); // xiaoming

  // 访问私有属性
  // print(p1._money); // 此时就是私有变量了
  print(p1.getMoney()); // 100
  // 访问私有方法 不行哦这样操作
  // print(p1._wife())
}
