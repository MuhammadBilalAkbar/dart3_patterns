void main() {
  (String, int) userInfo(Map<String, dynamic> json) {
    return (json['name'] as String, json['age'] as int);
  }

  final json = {'name': 'Lily', 'age': 13};

  /// Lengthy method
  // final info = userInfo(json);
  // final name = info.$1;
  // final age = info.$2;
  // print(name);
  // print(age);

  /// Shortcut using pattern destructuring
  final (name, age) = userInfo(json);
  print(name);
  print(age);
}
