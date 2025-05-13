import 'configuration_parameter.dart';

abstract class BoolParameter extends ConfigurationParameter {
  bool value;

  BoolParameter(
    super.name,
    super.displayName,
    this.value, {
    super.hidden,
    super.compute,
  });

  double get floatValue => value ? 1.0 : 0.0;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BoolParameter &&
          runtimeType == other.runtimeType &&
          value == other.value;

  @override
  int get hashCode => value.hashCode;
}
