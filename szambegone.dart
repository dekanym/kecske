void main(List<String> args) {
  String input = "O teach me how I should forget to think (1.1.224.)";
  String result = input.replaceAll(RegExp(r'\d'),
      ''); // a \d figyeli meg van a szám benne de van \D ami nem szám karaktereket nézi :D
  print(result);
}
