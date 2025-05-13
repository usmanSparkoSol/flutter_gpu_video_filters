import 'package:flutter/material.dart';

import 'vector_parameter.dart';

abstract class RectParameter extends VectorParameter<Rect> {
  RectParameter(
    super.name,
    super.displayName,
    super.value, {
    super.hidden,
    super.compute,
  });

  @override
  List<double> get values => [value.left, value.top, value.width, value.height];

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RectParameter &&
          runtimeType == other.runtimeType &&
          value == other.value;

  @override
  int get hashCode => value.hashCode;
}

extension RectX on Rect {
  Rect copyWith({double? left, double? top, double? width, double? height}) {
    return Rect.fromLTWH(
      left ?? this.left,
      top ?? this.top,
      width ?? this.width,
      height ?? this.height,
    );
  }
}
