/// You can use a pattern variable declaration anywhere Dart allows local variable declaration.
void main() {
  final (a, [b, c]) = ('str', [1, 2]);
  print(a);
  print(b);
  print(c);
}
