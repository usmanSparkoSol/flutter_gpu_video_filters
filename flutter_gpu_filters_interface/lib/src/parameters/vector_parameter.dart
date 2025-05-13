import 'dart:typed_data';

import 'configuration_parameter.dart';

abstract class VectorParameter<T> extends ConfigurationParameter {
  T value;

  VectorParameter(
    super.name,
    super.displayName,
    this.value, {
    super.hidden,
    super.compute,
  });

  List<double> get values;

  Float32List get float32 => Float32List.fromList(values);

  Float64List get floats64 => Float64List.fromList(values);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VectorParameter &&
          runtimeType == other.runtimeType &&
          value == other.value;

  @override
  int get hashCode => value.hashCode;
}
