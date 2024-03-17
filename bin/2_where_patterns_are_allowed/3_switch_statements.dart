// ignore_for_file: pattern_never_matches_value_type

void main() {
  final obj = 1;
  // final obj = (2,3);
  const first = 1;
  const last = 5;

  switch (obj) {
    // Matches if 1 == obj.
    case 1:
      print('one');

    // Matches if the value of obj is between the constant values of 'first' and 'last'.
    case >= first && <= last:
      print('in range');

    // Matches if the value of obj is 9 or 10.
    case 9 || 10:
      print('value of obj is 9 or 10');

    // True when obj is 4 and first and last are equal
    case 4 when first == last:
      print('true when obj is 4 and first and last are equal');

    // Matches if obj is a record with two fields, then assigns the fields to 'a' and 'b'.
    case (final a, final b):
      print('a = $a, b = $b');

    default:
  }
}
