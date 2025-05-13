import 'package:flutter/material.dart';

import 'vector_parameter.dart';

abstract class SizeParameter extends VectorParameter<Size> {
  SizeParameter(
    super.name,
    super.displayName,
    super.value, {
    super.hidden,
    super.compute,
  });

  @override
  List<double> get values => [value.width, value.height];

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SizeParameter &&
          runtimeType == other.runtimeType &&
          value == other.value;

  @override
  int get hashCode => value.hashCode;
}

extension SizeX on Size {
  Size copyWith({double? width, double? height}) {
    return Size(width ?? this.width, height ?? this.height);
  }
}
