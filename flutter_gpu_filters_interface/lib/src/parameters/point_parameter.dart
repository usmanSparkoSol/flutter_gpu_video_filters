import 'dart:math';

import 'vector_parameter.dart';

abstract class PointParameter extends VectorParameter<Point<double>> {
  PointParameter(
    super.name,
    super.displayName,
    super.value, {
    super.hidden,
    super.compute,
  });

  @override
  List<double> get values => [value.x, value.y];

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PointParameter &&
          runtimeType == other.runtimeType &&
          value == other.value;

  @override
  int get hashCode => value.hashCode;
}

extension PointX on Point<double> {
  Point<double> copyWith({double? x, double? y}) {
    return Point(x ?? this.x, y ?? this.y);
  }
}
