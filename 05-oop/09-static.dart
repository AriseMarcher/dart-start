class Person {
  static String name = 'xiaoming';
  int age = 18;

  printInfo() {
    // print(this.name); // 不能通过 this 关键字，访问静态属性
    print(name);
  }

  static getInfo() {
    // 静态方法中不能访问非静态属性
    // print(age);

    // 静态方法，不能访问非静态方法
    // printUserInfo();
  }

  printUserInfo() {
    // 非静态方法，可以访问静态属性
    print(name);
    print(age);

    // 非静态方法，可以访问静态方法
    getInfo();
  }
}

void main() {
  var p1 = new Person();
  p1.printInfo();
  // The static getter 'name' can't be accessed through an instance.
  // print(p1.name);
  // 静态成员可以通过类名称直接访问
  print(Person.name);

  // Instance member 'printInfo' can't be accessed using static access.
  // print(Person.printInfo());

  // Instance member 'printUserInfo' can't be accessed using static access.
  // print(Person.printUserInfo());
}
