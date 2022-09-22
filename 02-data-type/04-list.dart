void main() {
  // 声明List - 字面量
  List l1 = ['a', 'b', 'c', 1, 2, 3];
  print(l1); // [a, b, c, 1, 2, 3]

  // 限定元素类型的声明方式
  List l2 = <int>[1, 2, 3];
  print(l2); // [1, 2, 3]

  // 通过构造函数的声明方式
  // growable = false 不能添加元素
  var l3 = new List.empty();
  print(l3); // []
  // l3.add(1);
  // print(l3);

  var l4 = new List.empty(growable: true);
  l4.add(1);
  print(l4); // [1]

  var l5 = new List.filled(3, 6);
  print(l5); // [6, 6, 6]

  // 扩展操作符
  var l6 = [0, ...l5];
  print(l6); // [0, 6, 6, 6]

  var l7;
  // 'Null' is not a subtype of type 'Iterable<dynamic>'
  // var l8 = [7, ...l7];
  var l8 = [8, ...?l7];
  print(l8); // [8]

  // 返回列表的长度
  print(l1.length); // 6

  // 列表的反转
  print(l1.reversed); // (3, 2, 1, c, b, a)
  print(l1.reversed.toList()); // [3, 2, 1, c, b, a]

  // 添加元素
  l4.addAll([4, 5, 6]);
  print(l4); // [1, 4, 5, 6]

  // 删除元素
  l4.remove(6);
  print(l4); // [1, 4, 5]

  // 根据下标删除元素
  l4.removeAt(1); // 删除下标为1的元素
  print(l4); // [1, 5]

  // 在指定的位置添加元素
  l4.insert(1, 9);
  print(l4); // [1, 9, 5]

  // 清空
  l4.clear();
  print(l4); // []
  print(l4.isEmpty); // true

  // 合并元素
  List words = ['hello', 'world'];
  print(words.join('-')); // hello-world
}
