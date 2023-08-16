void main() {
  Map<String, dynamic> person = {
    "name": "mahesh",
    "age": 32,
    "language": "flutter"
  };
  //name,age and language are keys and must me unique
  //Properties
  //keys
  print(person.keys);
  //values
  print(person.values);
  //length
  print(person.length);
  //isEmpty
  print(person.isEmpty);

  print(person["name"]); //acces the data from map using key
  print(person["name1"]);

  person["phone"] = 899090033;
  print(person);
  person["name"] = "Dart";
  print(person);
  person.remove("age");
  print(person);
}

/*

Map: data stored as keys and values. in Map, each key must be unique.
Map<String,dynamic> person = {
  "name":"mahesh",
  "age":32.
  "language":"flutter"
}
 */