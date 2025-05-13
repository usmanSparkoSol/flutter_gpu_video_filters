import 'dart:typed_data';

import 'package:collection/collection.dart';

import 'package:vector_math/vector_math_64.dart';

import 'vector_parameter.dart';

abstract class Mat4Parameter extends VectorParameter<Matrix4> {
  Mat4Parameter(
    super.name,
    super.displayName,
    super.value, {
    super.hidden,
    super.compute,
  });

  @override
  List<double> get values => value.storage;

  @override
  Float64List get floats64 => value.storage;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Mat4Parameter &&
          runtimeType == other.runtimeType &&
          value == other.value;

  @override
  int get hashCode => value.hashCode;
}

extension Mat4 on Matrix4 {
  Matrix4 copyWith({
    required Map<int, double> items,
  }) {
    return Matrix4.fromList(
      storage.mapIndexed((i, e) => items[i] ?? e).toList(),
    );
  }
}
