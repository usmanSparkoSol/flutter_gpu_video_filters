import 'dart:io';
import 'dart:typed_data';

abstract class InputSource {}

abstract class PathInputSource extends InputSource {
  final String path;

  PathInputSource(this.path);
}

class DataInputSource extends InputSource {
  final Uint8List data;

  DataInputSource(this.data);
}

class FileInputSource extends PathInputSource {
  final File file;

  FileInputSource(this.file) : super(file.absolute.path);
}

class AssetInputSource extends PathInputSource {
  AssetInputSource(super.path);
}
