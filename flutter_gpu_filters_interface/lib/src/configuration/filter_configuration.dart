import 'dart:async';

import '../context/video_export_config.dart';
import '../parameters/configuration_parameter.dart';

abstract class FilterConfiguration {
  List<ConfigurationParameter> get parameters;

  bool get ready;

  FutureOr<void> prepare();

  FutureOr<void> update();

  FutureOr<void> dispose();
}

mixin VideoFilterConfiguration on FilterConfiguration {
  Stream<double> exportVideoFile(
    VideoExportConfig config, {
    Duration period = const Duration(seconds: 1),
  });
}
