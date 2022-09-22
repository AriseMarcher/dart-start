void main() {
  // 字面量
  var person = {'name': 'xiaoming', 'age': 18};
  print(person); // {name: xiaoming, age: 18}

  // 构造函数
  var p1 = new Map();
  p1['name'] = '张三';
  p1['age'] = 22;
  print(p1); // {name: 张三, age: 22}

  // 访问属性
  print(p1['name']); // 张三

  // 判断 Map 中的 key 是否存在
  print(p1.containsKey('name')); // true
  print(p1.containsKey('xxx')); // false

  // 赋值
  // 如果 key 不存在 我们才赋值 （如果key已经存在，则不赋值）
  p1.putIfAbsent('gender', () => '男'); // {name: 张三, age: 22, gender: 男}
  print(p1);
  p1.putIfAbsent('gender', () => '女'); // {name: 张三, age: 22, gender: 男}
  print(p1);

  // 获取 Map 中所有的 key
  print(p1.keys); // (name, age, gender)
  print(p1.values); // (张三, 22, 男)

  // 根据条件进行删除
  p1.removeWhere((key, value) => key == 'gender');
  print(p1); // {name: 张三, age: 22}
}
