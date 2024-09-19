import 'dart:io';

void main() {
  print("Enter a word:");
  String? name = stdin.readLineSync();
  
  if (name != null) {
    String reverse = name.split('').reversed.join();
    
    if (name == reverse) {
      print("palindrome a szó");
    } else {
      print("nem palindrome");
    }
}
}
