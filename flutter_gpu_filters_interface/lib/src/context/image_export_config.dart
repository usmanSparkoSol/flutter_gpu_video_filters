import 'dart:io';

import 'input_source.dart';

class ImageExportConfig {
  final InputSource source;
  final File output;
  final ImageExportFormat format;

  ImageExportConfig(
    this.source,
    this.output, {
    this.format = ImageExportFormat.auto,
  });
}

enum ImageExportFormat { png, jpeg, auto }

extension ImageExportFormatX on ImageExportFormat {
  String get platformKey {
    switch (this) {
      case ImageExportFormat.png:
        return 'png';
      case ImageExportFormat.jpeg:
        return 'jpeg';
      case ImageExportFormat.auto:
        return 'auto';
    }
  }
}
