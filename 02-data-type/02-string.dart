void main() {
  // 声明字符串
  var str1 = 'hello world';

  print(str1);

  var str2 = "你好 世界";
  print(str2);

  // 声明字符串
  String str3 = 'hello world';

  print(str3);

  String str4 = "你好 世界";
  print(str4);

  // 通过三个引号声明字符串
  String str5 = '''Hello
  World
  ''';
  print(str5);

  // 常见操作
  // 字符串拼接
  print(str1 + str2);
  print("$str1 $str2");

  // 字符串的分隔
  print(str1.split(''));

  // 字符串的裁切
  print('  abc   '.trim());
  print('  abc   '.trimLeft());

  // 判断字符串是否为空
  print(''.isEmpty);
  print(''.isNotEmpty);

  // 字符串替换
  print(str1.replaceAll('world', 'Dart'));
  // 正则替换
  print('123uu1lj123lkh'.replaceAll(RegExp(r'\d+'), '-'));

  // 通过正则匹配手机号
  var isPhone = RegExp(r'^1\d{10}$');
  String aPhone = '12357824598';
  print(isPhone.hasMatch(aPhone));

  // 查找字符串
  print(str1.contains('s'));
  // 定位字符串
  print(str1.indexOf('o'));
}
