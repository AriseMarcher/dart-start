void main() {
  var str = '𓀃';
  print(str.length); // 2
  print(str.runes.length); // 1

  // Runes 可以将 UTF-字符集表示的内容转换成符号
  Runes input = new Runes('\u{1f680}');
  print(new String.fromCharCodes(input)); // 🚀

  // Symbol
  var s1 = #abc;
  print(s1); // Symbol("abc")

  var s2 = new Symbol('abc');
  print(s2); // Symbol("abc")
  print(#abc == new Symbol('abc')); // true
  print(s1 == s2); // true

  // 声明动态类型的变量
  dynamic foo = 'bar';
  foo = 123;
  print(foo); // 123
}
