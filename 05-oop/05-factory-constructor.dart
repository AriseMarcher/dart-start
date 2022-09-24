// 有问题 我暂时还没找到解决方法
class Person {
  String name;

  // The non-nullable variable 'instance' must be initialized.
  static Person instance;

  factory Person([String name = 'xiaoming']) {
    // 工厂构造函数中 不能使用 this 关键字
    if (Person.instance == null) {
      Person.instance = new Person.newSelf(name);
    }

    // 非第一次实例化
    return Person.instance;
  }

  // 命名构造函数
  Person.newSelf(this.name);
}

void main() {
  // 实例化操作
  Person p1 = new Person('zhangsan');
  print(p1.name);

  Person p2 = new Person('lisi');
  print(p2.name);
}
