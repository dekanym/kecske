import 'dart:io';


void main() {
  // open file
  File file = File('school.txt');
  // write to file
  file.writeAsStringSync('Szegedi SZC Vasvári Pál Gazdasági és Informatikai Technikum, 6722, Gutenberg u. 11., Szeged');
  print('File written.');

  File schoolen = File('school.csv');

  print("Kérem a keresztnevedet: ");
   String? firstname = stdin.readLineSync();
  print("kérem a vezetéknevedet: ");
  String? surname = stdin.readLineSync();

  print("Hol laksz:");
  String? city = stdin.readLineSync();
  schoolen.writeAsStringSync('$firstname \n$surname \n$city');


  File classtask = new File('school.csv');
List<String> lines = classtask.readAsLinesSync();

print(lines[2] +" "+ lines[0]+" "+lines[1]);
}