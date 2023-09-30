void main() {
  final listItems = ['Hi', 'There!'];

  int index = 1;

  switch (listItems) {
    case ['Hi', 'there!']:
      print('Hi!');
    case ['HI', 'there!']:
      print('HI!');
    case ['Hi', 'There!'] when index == 9:
      print('Hi! when index is 9');
    case ['Hi' || 'H', 'There!' || 'there'] when index == 1:
      print('Hi! when index is 1');
    // case _:
    default:
      print('did not match');
  }

  final answer = switch (listItems) {
    ['Hi', 'there!'] => 'Hi!',
    ['HI', 'there!'] => 'HI!',
    ['Hi', 'There!'] when index == 9 => 'Hi! when index is 9',
    ['Hi' || 'H', 'There!' || 'there'] when index == 1 => 'Hi! when index is 1',
    _ => 'did not match',
  };
  print(answer);
}
