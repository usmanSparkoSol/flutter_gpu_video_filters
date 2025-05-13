import 'package:flutter/material.dart';

import 'vector_parameter.dart';

abstract class ColorParameter extends VectorParameter<Color> {
  ColorParameter(
    super.name,
    super.displayName,
    super.value, {
    super.hidden,
    super.compute,
  });

  @override
  List<double> get values =>
      [value.red / 255.0, value.green / 255.0, value.blue / 255.0];

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ColorParameter &&
          runtimeType == other.runtimeType &&
          value == other.value;

  @override
  int get hashCode => value.hashCode;
}
