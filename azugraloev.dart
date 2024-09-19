import 'dart:io';

void main(List<String> args) {
  print("kérek egy évet: ");
  int ev = stdin.readByteSync();
  if (ev % 4 == 0 && ev % 100 != 0 || ev % 400 == 0) {
    print("a(z) $ev. óra");
  }
}
