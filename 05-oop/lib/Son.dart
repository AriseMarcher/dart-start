import 'Father.dart';

class Son extends Father {
  String name = '刘禅';

  Son(String job) : super(job);

  // 继承命名构造函数
  Son.origin(String job) : super.origin(job);

  @override
  say() {
    print('111111111');
    super.say();
    print('我是 刘禅 我爹是 ${super.name}');
  }
}
