void main() {
  final myFoo = Foo(one: 'one', two: 2);

  final Foo(:one, two: two) = myFoo;
  print('$one, $two');
}

class Foo {
  Foo({required this.one, required this.two});

  String one;
  int two;
}
