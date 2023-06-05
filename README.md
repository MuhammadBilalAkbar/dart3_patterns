A sample command-line application with an entrypoint in `bin/`, library code
in `lib/`, and example unit test in `test/`.

## 1. Research: Dart3 Patterns (New Features)

- Keywords:
    - patterns in dart
    - dart 3 patterns
    - Patterns in dart pdf
    - dart pattern matching
    - number pattern in dart
    - Patterns in dart pdf github
    - dart patterns
    - Dart pattern matching flutter
    - Dart pattern matching example
    - dart 3 pattern matching
    - dart records and patterns
- Video Title: Patterns in Dart Language | New Features in Dart 3 with Pattern Matching and Pattern
  Destructuring

## 2. Research: Competitors

**Flutter Videos/Articles**

- 3.1K: https://youtu.be/j3fzeDpd2ts
- https://dart.dev/language/patterns
- https://github.com/dart-lang/language/blob/main/accepted/future-releases/0546-patterns/feature-specification.md

  **Dart3 All Features:**
- 30K: https://youtu.be/KhYTFglbF2k
- 65K: https://youtu.be/yRlwOdCK7Ho?t=412
- 19K: https://youtu.be/dBwvc-U8q-c
- 2.3K: https://youtu.be/kJLLzrhMku4
- 1.6K: https://youtu.be/r51ARivU2GM
- 873: https://youtu.be/YGDYjtbx9Yg
- 442: https://youtu.be/7NsBBXyCX3s
- https://medium.com/dartlang/announcing-dart-3-53f065a10635
- https://medium.com/flutter-community/new-features-in-dart-3-0-7e95ad8d0b81
- https://codewithandrea.com/articles/whats-new-dart-3-introduction/
- https://proandroiddev.com/dart-3-0-revolutionizing-development-with-cutting-edge-features-a59e7b37aaf5
- https://www.sandromaglione.com/techblog/records-and-patterns-dart-language
- https://medium.com/@dnkibere/dart-3-records-pattern-matching-sealed-classes-and-more-12a9e3a52447
- https://blog.devgenius.io/dart-3-the-biggest-release-of-dart-yet-c9cf44ad428
- https://codelabs.developers.google.com/codelabs/dart-patterns-records#0
- https://www.infoworld.com/article/3696353/googles-dart-3-and-flutter-310-bring-big-changes.html

**Android/Swift/React Videos**

- 8.2K: https://youtu.be/UlFFKkq6fyU
- 11K: https://youtu.be/a2hIvJt6F84
- 497: https://youtu.be/Ko_hak4p0cM
- https://datarockets.com/blog/code/javascript-pattern-matching-library-daggy/
- https://docs.swift.org/swift-book/documentation/the-swift-programming-language/patterns/
- https://refactoring.guru/design-patterns/swift
- https://medium.com/@lubabahasnain93/design-patterns-in-swift-part-i-creational-design-pattern-18d4be82092f

**Great Features**

- Patterns allow you to write more concise and expressive code by capturing common patterns or
  structures in your data. This makes your code easier to read and understand.
- Overall, patterns and pattern matching in Dart provide a powerful toolset for working with complex
  data structures, organizing code, and improving code readability and maintainability. They
  contribute to more efficient and expressive programming, leading to increased productivity and
  better code quality.

**Problems from Videos**

- NA

**Problems from Flutter Stackoverflow**

- NA

## 3. Video Structure

**Main Points / Purpose Of Lesson**

1. In this video lesson, you will learn how to use patterns to match(determine if the value has the
   form you expect) and destructure(after pattern match, the pattern can then access the object’s
   data and extract it in parts.)
2. Main points:
    - What patterns do
    - Places where patterns can appear
    - Use cases for patterns
    - Types of patterns (Pattern precedence)
3. These patterns are very useful when collecting data from internet, checking their authenticity
   and show in the app in the right way.

**The Structured Main Content**

# Patterns

Patterns are a category of syntax in the Dart language, like statements and expressions. A pattern
represents the shape of a set of values that it may match against actual values.

**Table of contents**

1. [What patterns do](#What-patterns-do)
    - [Matching](#Matching)
    - [Destructuring](#Destructuring)
2. [Places patterns can appear](#Places-patterns-can-appear)
    - [Variable declaration](#Variable-declaration)
    - [Variable assignment](#Variable-assignment)
    - [Switch statements and expressions](#Switch-statements-and-expressions)
    - [For and for-in loops](#For-and-for-in-loops)
3. [Uses cases for patterns](#Uses-cases-for-patterns)
    - [Destructuring multiple returns](#Destructuring-multiple-returns)
    - [Destructuring class instances](#Destructuring-class-instances)
    - [Algebraic data types](#Algebraic-data-types)
    - [Validating incoming JSON](#Validating-incoming-JSON)
4. [Pattern types](#Pattern-types)

## What patterns do

In general, a pattern may `match a value`, `de-structure a value`, or both, depending on the context
and
shape of the pattern.

First, pattern matching allows you to check whether a given value:

- Has a certain shape.
- Is a certain constant.
- Is equal to something else.
- Has a certain type.

**Then, pattern destructuring** provides you with a convenient declarative syntax to break that
value into its parts.

### Matching

A pattern always tests against a value to determine if the value has the form you expect. In other
words, you are checking if the value matches the pattern.

```dart
void main() {
  final number = 1;
  switch (number) {
  // Constant pattern matches if 1 == number.
    case 1:
      print('one');
  }
}
```

Many patterns make use of subpatterns, sometimes called outer and inner patterns, respectively.
Patterns match recursively on their subpatterns. For example, the individual fields of any
collection-type pattern could be variable patterns or constant patterns:

```dart
void main() {
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
```

To ignore parts of a matched value, you can use a wildcard `_` pattern as a placeholder.

### Destructuring

When an object and pattern match, the pattern can then access the object’s data and extract it in
parts. In other words, the pattern destructures the object:

```dart
void main() {
  final numList = [1, 2, 3];
// List pattern [a, b, c] destructures the three elements from numList...
  final [a, b, c] = numList;
// ...and assigns them to new variables.
  print(a + b + c);
}
```

You can nest any kind of pattern inside a destructuring pattern. For example, this case pattern
matches and destructures a two-element list whose first element is a or b:

```dart
void main() {
  final list = ['a', 'z'];
  switch (list) {
    case ['a' || 'b', final c]:
      print(c);
  }
}
```

## Places patterns can appear

You can use patterns in several places in the Dart language:

- Local variable declarations and assignments
- for and for-in loops
- if-case and switch-case
- Control flow in collection literals

This section describes common use cases for matching and destructuring with patterns.

### Variable declaration

You can use a pattern variable declaration anywhere Dart allows local variable declaration. The
pattern matches against the value on the right of the declaration. Once matched, it destructures the
value and binds it to new local variables:

```dart 
// Declares new variables a, b, and c.
final (a, [b, c]) = ('str', [1, 2]);
```

A pattern variable declaration must start with either var or final, followed by a pattern.

### Variable assignment

A variable assignment pattern falls on the left side of an assignment. First, it destructures the
matched object. Then it assigns the values to existing variables, instead of binding new ones.

Use a variable assignment pattern to swap the values of two variables without declaring a third
temporary one:

```dart 
var (a, b) = ('left', 'right');
(b, a) = (a, b); // Swap.
print('$a $b'); // Prints "right left".
```

### Switch statements and expressions

Every case clause contains a pattern. This applies to switch statements and expressions, as well as
if-case statements. You can use any kind of pattern in a case.

Case patterns are refutable(a pattern that can be tested against a value to determine if the pattern
matches the value). They allow control flow to either:

- Match and destructure the object being switched on.
- Continue execution if the object doesn’t match.

The values that a pattern destructures in a case become local variables. Their scope is only within
the body of that case.

```dart 
switch (obj) {
// Matches if 1 == obj.
case 1:
print('one');

// Matches if the value of obj is between the constant values of 'first' and 'last'.
case >= first && <= last:
print('in range');

// Matches if obj is a record with two fields, then assigns the fields to 'a' and 'b'.
case (final a, final b):
print('a = $a, b = $b');

default:
}
```

Logical-or patterns are useful for having multiple cases:

```dart
void main() {
  int a = 2;
  final isPrimary = switch (a) {
    1 || 2 || 3 => true,
    _ => false,
  };
  print(isPrimary);
}
```

Switch statements can have multiple cases share a body without using logical-or patterns:

```dart 
switch (shape) {
case Square(size: final s) || Circle(size: final s) when s > 0:
print('Non-empty symmetric shape');
}
```

### For and for in loops

You can use patterns in for and for-in loops to iterate-over and destructure values in a collection.

This example uses object destructuring in a for-in loop to destructure the MapEntry objects that
a <Map>.entries call returns:

```dart 
Map<String, int> hist = {
'a': 23,
'b': 100,
};

for (var MapEntry(key: key, value: count) in hist.entries) {
print('$key occurred $count times');
}
```

The object pattern checks that hist.entries has the named type MapEntry, and then recurses into the
named field subpatterns key and value. It calls the key getter and value getter on the MapEntry in
each iteration, and binds the results to local variables key and count, respectively.

Binding the result of a getter call to a variable of the same name is a common use case. his allows
you to simplify the variable pattern from something redundant like key: key to just :key:

```dart 
for (var MapEntry(:key, value: count) in hist.entries) {
print('$key occurred $count times');
}
```

## Uses cases for patterns

The previous section describes how patterns fit into other Dart code constructs. This section
describes even more use cases, answering:

- When and why you might want to use patterns.
- What kinds of problems they solve.
- Which idioms they best suit.

### Destructuring multiple returns

Records allow aggregating and returning multiple values from a single function call. Patterns add
the ability to destructure a record’s fields directly into local variables, inline with the function
call.

Instead of individually declaring new local variables for each record field, like this:

```dart
void main() {
  (String, int) userInfo(Map<String, dynamic> json) {
    return (json['name'] as String, json['age'] as int);
  }

  final json = {'name': 'Lily', 'age': 13};

  final info = userInfo(json);
  final name = info.$1;
  final age = info.$2;
  print(name);
  print(age);
}
```

You can destructure the fields of a record that a function returns into local variables:

```dart 
  final (name, age) = userInfo(json);
  print(name);
  print(age);
```

### Destructuring class instances

Object patterns match against named object types, allowing you to destructure their data using the
getters of class.

To destructure an instance of a class, use the named type, followed by the properties to destructure
enclosed in parentheses:

```dart
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
```

### Algebraic data types

Object destructuring and switch cases are beneficial to writing code in an algebraic data type
style.
Use this method when:

- You have a family of related types.
- You have an operation that needs specific behavior for each type.
- You want to group that behavior in one place instead of spreading it across all the different type
  definitions.

Instead of implementing the operation as an instance method for every type, keep the operation’s
variations in a single function that switches over the subtypes:

### Validating incoming JSON

Map and list patterns work well for destructuring key-value pairs in JSON data:

```dart 
final json = {
  'user': ['Lily', 13]
};
final {'user': [name, age]} = json;
```

If you know that the JSON data has the structure you expect, the previous example is realistic. But
data typically comes from an external source, like over the network. You need to validate it first
to confirm its structure.

Without patterns, validation is complex:

```dart
void main() {
  /// Without using patterns
  if (json.length == 1 && json.containsKey('user')) {
    final user = json['user'];
    if (user is List<Object> &&
        user.length == 2 &&
        user[0] is String &&
        user[1] is int) {
      final name = user[0] as String;
      final age = user[1] as int;
      print('User $name is $age years old.');
    }
  }
}
```

A single case pattern can achieve the same validation. Single cases work best as if-case statements.
Patterns provide a more declarative, and much less verbose method of validating JSON:

```dart 
/// with patterns
if (json case {'user': [String name, int age]}) {
print('User $name is $age years old.');
}
```

This case pattern validates following all at the same time:

- json is a map, because it must first match the outer map pattern to proceed.
    - And, since it’s a map, it also confirms json is not null.
- json contains a key user.
- The key user pairs with a list of two values.
- The types of the list values are String and int.
- The new local variables to hold the values are String and int.

## Pattern types

This topic is reference for different kinds of patterns. For an overview of how patterns work,
where you can use them in Dart, and common use cases, visit first three points
in [Table of Contents](#Patterns).

#### Pattern precedence

Similar to operator precedence, pattern evaluation adheres to precedence rules. You can use
parenthesized patterns(parentheses in a pattern let you control pattern precedence and insert a
lower-precedence pattern where a higher precedence one is expected) to evaluate lower-precedence
patterns first.

This document lists the pattern types in ascending order of precedence:

- Logical-or patterns are lower-precedence than logical-and, logical-and patterns are
  lower-precedence than relational patterns, and so on.

- Post-fix unary patterns (cast, null-check, and null-assert) share the same level of precedence.

- The remaining primary patterns share the highest precedence. Collection-type (record, list, and
  map) and Object patterns encompass other data, so are evaluated first as outer-patterns.

lower-precedence to higher-precedence:

1. Logical-or (`subpattern1 || subpattern2`)
2. Logical-and (`subpattern1 && subpattern2`)
3. Relational (`==, !=, <, >, <=, and >=`)
4. Cast (`foo as String`)
5. Null-check (`subpattern?`)
6. Null-assert (`subpattern!`)
7. Constant (123, null, 'string', math.pi, SomeClass.constant, const Thing(1, 2), const (1 + 2))
8. Variable (var bar, String str, final int _)
9. Identifier (foo, _)
10. Parenthesized (`(subpattern)` with lower-precedence will be solved first)
11. List (`[subpattern1, subpattern2]`)
    - Rest element (List patterns can contain one rest element (...) which allows matching lists of
      arbitrary lengths)
12. Map (`{"key": subpattern1, someConst: subpattern2}`)
13. Record (`(subpattern1, subpattern2)`, `(x: subpattern1, y: subpattern2)`)
14. Object (`SomeClass(x: subpattern1, y: subpattern2)`)
15. Wildcard (`_` this element is required in callback but not used inside the function)
