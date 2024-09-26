import 'dart:io';

void main() {
  print("Enter a number:");
  int elso = int.parse(stdin.readLineSync()!);
  print("Enter another number:");
  int masodik = int.parse(stdin.readLineSync()!);
  print("Enter a third number:");
  int harmadik = int.parse(stdin.readLineSync()!);

  if (elso > masodik && elso > harmadik) {
    print("The greatest number is: $elso");
  } else if (masodik > elso && masodik > harmadik) {
    print("The greatest number is: $masodik");
  } else {
    print("The greatest number is: $harmadik");
  }
  print(" ");
  if (elso < masodik && elso < harmadik) {
    print("The smallest number is: $elso");
  } else if (masodik < elso && masodik < harmadik) {
    print("The smallest number is: $masodik");
  } else {
    print("The smallest number is: $harmadik");
  }
  print(4 * (elso + masodik + harmadik));
  print(" ");
  print(2 * ((elso + masodik) + (elso + harmadik) + (masodik + harmadik)));
  print(" ");
  print(elso * masodik * harmadik);

  print("Kérlek, add meg az a értékét:");
  double a = double.parse(stdin.readLineSync()!);

  print("Kérlek, add meg a b értékét:");
  double b = double.parse(stdin.readLineSync()!);

  print("Kérlek, add meg a c értékét:");
  double c = double.parse(stdin.readLineSync()!);

  double D = b * b - 4 * a * c;

  if (D > 0) {
    print("két különböző valós gyök");
  } else if (D == 0) {
    print("kettőzött valós gyöke.");
  } else {
    print("nincs valós gyök, csak komplex ");
  }

  int number;

  while (true) {
    print("Kérlek, adj meg egy legalább 3 jegyű egész számot:");
    number = int.parse(stdin.readLineSync()!);

    if (number.abs() >= 100) {
      break;
    } else {
      print("A megadott szám nem legalább 3 jegyű. Kérlek, próbáld újra.");
    }
  }
  print("");
  if (number % 2 == 0) {
    print("A szám paros.");
  } else {
    print("A szám paratlan.");
    print(" ");
    print("feladtam a négyzetszámosat :D");
    print(" ");
    int num = 0;
    String str = number.abs().toString();
    for (int i = 0; i < str.length; i++) {
      num += int.parse(str[i]);
    }
    print(num);
    print(str.split("").reversed.join());
  }

  if (number < 0) {
    print('$num nem négyzetszám.');
    return;
  }

  for (int i = 0; i * i <= number; i++) {
    if (i * i == number) {
      print('$num négyzetszám.');
    }
  }
}
