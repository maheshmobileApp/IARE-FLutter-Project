void main() {
  List<int> values = [12, 13, 45, 12, 56, 57, 78, 89];
  List<int> numbers = [2, 3, 5, 7, 8, 2, 6];
  List<int> newvalues = [];
  List<int> addvalues = [];

  //for loop for double the values in list
  for (var j = 0; j < numbers.length; j++) {
    var sum = numbers[j] + 2;
    addvalues.add(sum);
  }
  print(addvalues); //[4,5,7,9,10,4,8]

  final result = numbers.map((e) => e + 2).toList();
  final result1 = numbers.map((e) => e * 2).toList();

  //using for in loop solving the task
  for (var j in numbers) {
    var sum = numbers[j] + 2;
    addvalues.add(sum);
  }
  print(addvalues);

//for loop for filtering the values which are >35 from the list
  // for (var i = 0; i < values.length; i++) {
  //   if (values[i] < 35) {
  //     continue;
  //   } else {
  //     var value = values[i];
  //     newvalues.add(value);
  //   }
  // }
  // print(newvalues);

  final filterResult = values.where((element) => element > 35).toList();
  //using for in loop solving the task
  for (var i in values) {
    if (values[i] < 35) {
      continue;
    } else {
      var value = values[i];
      newvalues.add(value);
    }
  }
  print(newvalues);
}
