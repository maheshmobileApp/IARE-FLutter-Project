void main() {
  var age = 20;

  int a = 12;
  int b = 40;

  print("result is  ${a + b}");
  print("sum of $a and $b");

  if (age >= 18) {
    print("you are voter");
  } else {
    print("you are not voter");
  }
  age >= 18 ? print("your are voter ***") : print("your are not voter******");
  int daynumber = 4;

  if (daynumber == 1) {
    print("sunday");
  } else if (daynumber == 2) {
    print("monday");
  } else if (daynumber == 3) {
    print("tue");
  } else if (daynumber == 4) {
    print("wed");
  } else if (daynumber == 5) {
    print("thu");
  } else if (daynumber == 6) {
    print("fri");
  } else {
    print("sat");
  }

  switch (daynumber) {
    case 1:
      print("sunday");
      break;
    case 2:
      print("monday");
      break;
    case 3:
      print("tue");
      break;
    case 4:
      print("wed");
      break;
    case 5:
      print("thu");
      break;
    case 6:
      print("fri");
      break;
    default:
      print("sat");
  }
}
