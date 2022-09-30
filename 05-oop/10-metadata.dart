class Phone {
  // 这是旧版本中的方法，将来会移除
  @deprecated
  activate() {
    print('假如是之前的方法');
    turnOn();
  }

  turnOn() {
    print('开机');
  }
}

void main() {
  var p = new Phone();
  p.activate();
}
