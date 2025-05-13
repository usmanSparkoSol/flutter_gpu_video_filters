import 'number_parameter.dart';

abstract class RangeNumberParameter extends NumberParameter {
  final num? min;
  final num? max;

  RangeNumberParameter(
    super.name,
    super.displayName,
    super.value, {
    this.min,
    this.max,
    super.hidden,
    super.compute,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NumberParameter &&
          runtimeType == other.runtimeType &&
          value == other.value;

  @override
  int get hashCode => value.hashCode;
}
