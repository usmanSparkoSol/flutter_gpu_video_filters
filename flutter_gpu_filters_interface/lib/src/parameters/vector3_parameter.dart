import 'dart:typed_data';

import 'package:vector_math/vector_math_64.dart' show Vector3;

import 'vector_parameter.dart';

abstract class Vector3Parameter extends VectorParameter<Vector3> {
  Vector3Parameter(
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
