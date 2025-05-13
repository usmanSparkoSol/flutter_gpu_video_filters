import 'dart:io';
import 'dart:typed_data';

import 'configuration_parameter.dart';

abstract class DataParameter extends ConfigurationParameter {
  Uint8List? data;
  String? asset;
  File? file;

  DataParameter(
    super.name,
    super.displayName, {
    super.hidden,
    super.compute,
  });
}
