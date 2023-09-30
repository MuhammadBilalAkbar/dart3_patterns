void main() {
  final list1 = [1, 2, 3];
  final [a, b, c] = list1;
  print('$a $b $c');

  /// Rest elements
  final list2 = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  final [d, e, f, ..., g] = list2;
  print('$d $e $f $g');
  final [h, i, _, j, ..., k] = list2;
  print('$h $i $j $k');
  final [l, m, _, n, ...rest, o] = list2;
  print('$l $m $n $rest $o');
}
