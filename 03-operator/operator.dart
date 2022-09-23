void main() {
  // 地板除
  print(7 ~/ 4); // 1

  // 类型判断运算符
  List list = [];
  if (list is List) {
    print('yes'); // yes
  } else {
    print('no');
  }

  if (list is! List) {
    print('yes');
  } else {
    print('no'); // no
  }

  // 避空运算符
  print(1 ?? 3); // 1
  print(null ?? 12); // 12

  var foo;
  print(foo ?? 0); // 0 如果 foo 是 null，则返回 0

  var bar;
  // if (bar == null) {
  //   bar = 99;
  // }
  bar ??= 99;
  print(bar); // 99
  bar ??= 111;
  print(bar); // 99

  // 条件属性运算符（保护可能为空的属性）
  var m = new Map();
  print(m.length);
  var obj;
  // print(obj.length); // The getter 'length' was called on null.
  print(obj?.length); // null

  // 级联运算符
  Set s1 = new Set();
  s1.add(1);
  s1.add(2);
  s1.add(3);
  s1.remove(2);

  print(s1); // {1, 3}

  s1
    ..add(4)
    ..add(5)
    ..add(6);
  print(s1); // {1, 3, 4, 5, 6}
}
