void main() {
  // int a = null;
  int? a; //Declaring a nullable variable by using ?
  //This declares a variable a, which can be null or a int.
  // a = 10;
  int? b;
  // b = 30;

// 1. you can use if statement to check whether the variable is null or not
//2. you can use ! operator
//3. you can use ?? operator to assign a defalut value if the variable is null

  if (a != null) {}
  String? name;
  //name = "dafa";

  print(a ?? 0);
  print(name ?? "");
  // print(a ?? 0 + b ?? 0);
}
