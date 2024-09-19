import 'dart:io';

void main(List<String> args) {
  String maganyoshangzo = "aeiouAEIOU";

  print("Kérek egy mondatot: ");
  String? name = stdin.readLineSync();

  if (name == null || name.isEmpty) {
    print("Nincs megadott szöveg.");
    return;
  }

  int mennyiseg = 0;

  for (int i = 0; i < name.length; i++) {
    if (maganyoshangzo.contains(name[i])) {
      mennyiseg += 1;
    }
  }

  print("A mondatban ennyi magánhangzó van: $mennyiseg");
}
