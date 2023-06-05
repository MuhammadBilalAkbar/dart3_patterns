void main() {
  final myFoo = Foo(one: 'one', two: 2);
  print(myFoo);
  final Foo(:one, :two) = myFoo;
  print('one $one, two $two');
}

class Foo {
  Foo({required this.one, required this.two});

  String one;
  int two;
}
