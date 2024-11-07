
import 'dart:io';

void main() async
{
File testfile = new File('Welcome to test.txt');
String testdata = testfile.readAsStringSync();
print(testdata);

File classtask = new File('filereading.txt');
String classdata = classtask.readAsStringSync();
List<String> lines = classtask.readAsLinesSync();
print(classdata);
print("\n\n");

for(int i = 1; i < lines.length; i++)
{
  print(lines[i]);

}

print("\n\n");

for(int i = 1; i < 2; i++)
{
  print(lines[i]);
}

print("\n\n");

print(lines.last);


 List<String> linesclass =await classtask.readAsLines();

for(int i = 1; i < linesclass.length; i++)
{
  print(linesclass[i]);
}

List<List<String>> wordsPerLine = [];

  for (var line in linesclass) {
    List<String> words = line.split(',');
    wordsPerLine.add(words);
  }
print("\n\n\n");
  print(wordsPerLine);

 for (var line in lines) {
    // Basic check for email pattern in line
    if (line.contains('@')) {
      print(line);
    }
  }
}