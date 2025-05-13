import 'package:flutter/material.dart';

import '../configuration/filter_configuration.dart';
import '../context/input_source.dart';

class VideoPreview extends StatelessWidget {
  final VideoPreviewController controller;

  const VideoPreview({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Texture(textureId: controller.textureId);
  }
}

abstract class VideoPreviewController {
  int get textureId;

  Future<void> setVideoSource(PathInputSource source);

  @mustCallSuper
  Future<void> connect(FilterConfiguration configuration) async {
    if (!configuration.ready) {
      await configuration.prepare();
    }
  }

  Future<void> disconnect();

  Future<void> dispose();

  Future<void> play();

  Future<void> pause();

  Future<int> getCurrentPosition();

  Future<int> getDuration();
}
