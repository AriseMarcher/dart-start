void main() {
  // 字面量
  var nums = <int>{1, 2, 2, 3, 4};
  print(nums); // {1, 2, 3, 4}

  // 构造函数
  var fruits = new Set();
  fruits.add('apple');
  fruits.add('apple');
  fruits.add('orange');
  print(fruits); // {apple, orange}
  print(fruits.toList()); // [apple, orange]
  print(fruits.toList().toSet()); // {apple, orange}

  List newNums = [1, 2, 3, 3, 4];
  print(newNums.toSet()); // {1, 2, 3, 4}

  var caocao = new Set();
  caocao.addAll({'张辽', '司马懿', '关羽'});

  var liubei = new Set();
  liubei.addAll(['关羽', '张飞', '诸葛亮']);

  // 求交集
  print(caocao.intersection(liubei)); // {关羽}
  // 求并集
  print(caocao.union(liubei)); // {张辽, 司马懿, 关羽, 张飞, 诸葛亮}
  // 求差集
  print(caocao.difference(liubei)); // {张辽, 司马懿}
  // 返回第一个元素
  print(caocao.first); // 张辽
  // 返回最后一个
  print(caocao.last); // 关羽
}
