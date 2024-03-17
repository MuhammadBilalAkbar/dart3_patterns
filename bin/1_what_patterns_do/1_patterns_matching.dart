/// A pattern always tests against a value to determine if the value has the form you expect.
/// In other words, you are checking if the value matches the pattern.
void main() {
  final number = 1;
  switch (number) {
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
    case [a, b]:
      print('$a, $b');
  }
}
