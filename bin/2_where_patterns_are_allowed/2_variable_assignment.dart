/// A variable assignment pattern falls on the left side of an assignment.
/// Use a variable assignment pattern to swap the values of two variables
/// without declaring a third temporary one.

void main() {
  var (a, b) = ('left', 'right');
  (b, a) = (a, b); // Swap.
  print('$a $b'); // Prints "right left".
}
