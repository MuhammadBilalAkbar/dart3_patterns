/// A pattern always tests against a value to determine if the value has the form you expect.
/// In other words, you are checking if the value matches the pattern.
void main() {
  final number = 1;
  switch (number) {
    // Constant pattern matches if 1 == number.
    case 1:
      print('one');
  }

  /// Patterns match recursively on their subpatterns.
  List<String> obj = [];
  const a = 'a';
  obj.add(a);
  const b = 'b';
  obj.add(b);
  switch (obj) {
    // List pattern [a, b] matches obj first if obj is a list with two fields,
    // then if its fields match the constant subpatterns 'a' and 'b'.
    case [a, b]:
      print('$a, $b');
  }
}
