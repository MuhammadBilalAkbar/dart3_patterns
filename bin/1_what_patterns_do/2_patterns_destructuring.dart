/// When an object and pattern match, the pattern can then access the object’s data
/// and extract it in parts. In other words, the pattern destructures the object.
void main() {
  final numbersList = [1, 2, 3];
// List pattern [a, b, c] destructures the three elements from numList and assigns them to new variables.
  final [a, b, c] = numbersList;
  print(a + b + c);

  final list = ['a', 'z'];
  switch (list) {
    case ['a' || 'b', final c]:
      print(c);
  }
}
