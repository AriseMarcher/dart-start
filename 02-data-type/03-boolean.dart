void main() {
  // 声明布尔类型
  bool flag1 = true;
  print(flag1);

  bool flag2 = false;
  print(flag2);

  // 显式地进行判断
  // dart里面没有三个等号，强类型语言
  var flag3;
  if (flag3 == null) {
    print('Yes');
  } else {
    print('No');
  }

  // 一些特殊的判断场景
  var n1 = 0 / 0;
  print(n1); // NaN
  print(n1.isNaN);
}
