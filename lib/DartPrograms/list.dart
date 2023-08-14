void main() {
  List<int> marks = [23, 45, 66, 75, 43];

  print(marks.first);
  print(marks[3]);
  print(marks.isEmpty);
  print(marks.reversed);

  marks.add(40);
  print(marks);

  marks.addAll([34, 67, 33]);
  print(marks);
  marks.insert(2, 90);
  print(marks);
  marks.insertAll(6, [80, 60]);
  marks.remove(40);
  marks.removeAt(4);

  marks.clear();
}
