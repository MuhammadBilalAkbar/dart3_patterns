void main() {
  Map<String, int> list = {
    'a': 23,
    'b': 100,
  };

  for (final MapEntry(key: key, value: count) in list.entries) {
    print('$key occurred $count times');
  }

  print('\n');

  /// For same name, just use `:key` instead of `key: key`
  for (final MapEntry(:key, value: count) in list.entries) {
    print('$key occurred $count times');
  }
}
