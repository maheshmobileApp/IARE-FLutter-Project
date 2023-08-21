void main() {
//ClassName objectName = ClassName();
  Student saiObject = Student();
  saiObject.name = "sai kiran";
  saiObject.address = "hyd";
  saiObject.age = 20;
  saiObject.display();

  Student maheshObject = Student();
  maheshObject.name = "mahesh";
  maheshObject.address = "hyd";
  maheshObject.age = 30;
  maheshObject.display();
}

class Student {
  String? name;
  int? age;
  String? address;

  void display() {
    print("student details is $address $age $name");
  }
}
