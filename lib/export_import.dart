import 'dart:convert';
import 'dart:io';

Future<void> main() async {
  print('Say Hello!!!');
  // var dirAddress = '/Volumes/Media/Projects/Personal/Boilerplate/lib/modules';
  var dirAddress = stdin.readLineSync(encoding: utf8);
  Directory dir = Directory(dirAddress!);
  dir.list(recursive: false).forEach((f) {
    print(f);
  });
  //print(dirAddress);
  bool exists = await Directory(dirAddress).exists();
  if (exists) {
    var dir = new Directory(dirAddress);
    var nameOfDir = dirAddress.substring(dirAddress.lastIndexOf('/'));
    //print(nameOfDir);
    var file = File(dirAddress + '/' + nameOfDir + '.dart');
    var sink = file.openWrite();
    readFile(dir.path, dir, sink);
    sink.close();
  }else{
    print('Nhập liệu ngu!!!');

  }
}

void readFile(String parent, Directory dir, IOSink sink) {
  List contents = dir.listSync();
  for (var fileOrDir in contents) {
    if (fileOrDir is File) {
      writeFile(fileOrDir.path, sink);
    } else if (fileOrDir is Directory) {
      //print(fileOrDir);
      readFile(parent, fileOrDir, sink);
    }
  }
}

void writeFile(String path, IOSink sink) {
  sink.write('export\'' + path + '\';\n');
}
