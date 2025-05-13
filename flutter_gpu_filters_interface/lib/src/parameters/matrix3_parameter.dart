import 'dart:typed_data';

import 'package:collection/collection.dart';
import 'package:vector_math/vector_math_64.dart' show Matrix3;

import 'vector_parameter.dart';

abstract class Mat3Parameter extends VectorParameter<Matrix3> {
  Mat3Parameter(
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
}

extension Mat3 on Matrix3 {
  Matrix3 copyWith({
    required Map<int, double> items,
  }) {
    return Matrix3.fromList(
      storage.mapIndexed((i, e) => items[i] ?? e).toList(),
    );
  }
}
