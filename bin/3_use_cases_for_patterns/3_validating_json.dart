void main() {
  final json = {
    'user': ['Lily', 13]
  };
  final {'user': [name, age]} = json;

  /// Without using patterns
  // if (json.length == 1 && json.containsKey('user')) {
  //   final user = json['user'];
  //   if (user is List<Object> &&
  //       user.length == 2 &&
  //       user[0] is String &&
  //       user[1] is int) {
  //     final name = user[0] as String;
  //     final age = user[1] as int;
  //     print('User $name is $age years old.');
  //   }
  // }

  /// with patterns
  if (json case {'user': [String name, int age]}) {
    print('User $name is $age years old.');
  }
}
