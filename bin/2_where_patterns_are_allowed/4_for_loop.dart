void main() {
  Map<String, int> hist = {
    'a': 23,
    'b': 100,
  };

  // for (var MapEntry(key: key, value: count) in hist.entries) {
  //   print('$key occurred $count times');
  // }

  /// For same name, just use `:key` instead of `key: key`
  for (var MapEntry(:key, value: count) in hist.entries) {
    print('$key occurred $count times');
  }
}
