void main() {
  print("Hi this is dart program language");

  //datatype variablename = value;
  String name = "Dart Program ";
  print("print value is $name");

  bool isEmpty = name.isEmpty;
  print(isEmpty);
  int length = name.length;
  print("string length is $length");

  //Methods

  print(name.toLowerCase());
  print(name.toUpperCase());
  print(name.trim());
  print(name.replaceAll("Dart", "Java"));

  String location = "17.788|873.97884";
  print(location.split("|"));
}

//print value is $name  