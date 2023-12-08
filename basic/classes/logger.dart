// Mixin class
// A mixin can't be instantiated and can't have a constructor
// A mixin can't be extended by another class
mixin Logger {
  void log(String msg) => print('Log: $msg ::: ${DateTime.now()}');
}

mixin Logger2 {
  void log2(String msg) => print('Log2: $msg ::: ${DateTime.now()}');
}