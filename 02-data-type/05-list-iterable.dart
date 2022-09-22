void main() {
  var nums = [2, 4, 6, 7, 8];

  // for 循环进行遍历
  for (var i = 0; i < nums.length; i++) {
    print(nums[i]);
  }

  // for ... in
  for (var item in nums) {
    print(item);
  }

  // forEach
  nums.forEach((element) {
    print(element);
  });

  // map
  var newNums = [];
  for (var i = 0; i < nums.length; i++) {
    newNums.add(nums[i] * nums[i]);
  }
  print(newNums); // [4, 16, 36, 49, 64]

  var newMapNums = nums.map((e) => e * e);
  print(newMapNums); // 得到的是可迭代对象 (4, 16, 36, 49, 64)
  print(newMapNums.toList()); // [4, 16, 36, 49, 64]

  // where() 返回符合条件的元素
  // 判断数字是否是奇数
  bool isOdd(n) => n % 2 == 1;
  var oddNum = nums.where((element) => isOdd((element)));
  print(oddNum); // (7)

  // 使用 any() 来检测是否有奇数（至少一个）
  print(nums.any(isOdd)); // true
  // 使用 every() 来判断是否都是奇数
  print(nums.every(isOdd)); // false

  // 扩展
  var pairs = [
    [1, 2, 3],
    [4, 5, 6]
  ];
  // expand 降一级
  var flattened = pairs.expand((element) => element).toList();
  print(flattened); // [1, 2, 3, 4, 5, 6]

  // 折叠
  int result =
      [1, 2, 3].fold(2, (previousValue, element) => previousValue * element);
  print(result); // 12 = 2 * 1 * 2 * 3
}
