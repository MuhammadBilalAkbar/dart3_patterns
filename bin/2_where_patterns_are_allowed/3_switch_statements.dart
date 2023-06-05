void main() {
  int a = 2;
  final isPrimary = switch (a) {
    1 || 2 || 3 => true,
    _ => false,
  };
  print(isPrimary);
}
