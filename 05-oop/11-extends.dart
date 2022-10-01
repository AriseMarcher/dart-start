import 'lib/Father.dart';
import 'lib/Son.dart';

void main() {
  var f = new Father('汉昭烈帝');
  print(f.name);
  print(f.job);

  var s1 = new Son('小皇帝');
  s1.say();
  // print(s1._money); // 子类不能访问父类中的私有内容
  print(s1.getMoeny); // 10000
  print(s1.job);

  var s2 = new Son.origin('卖草鞋');
  print(s2.job);
  s2.say();
}
