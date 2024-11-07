import 'dart:io';

void main() {
 File sample = File('sample.txt');
  sample.writeAsStringSync('');
  
  File sampdelete = File('sample.txt'); 
  sampdelete.deleteSync(); 
}

void fileexistest(String filename) {
  File file = File(filename);
   if (file.existsSync()) {
    // delete file
    file.deleteSync();
    print('File deleted.');
  } else {
    print('File does not exist.');
  }
}