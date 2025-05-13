import 'configuration_parameter.dart';

abstract class NumberParameter extends ConfigurationParameter {
  num value;

  NumberParameter(
    super.name,
    super.displayName,
    this.value, {
    super.hidden,
    super.compute,
  });

  double get floatValue => value.toDouble();

  int get intValue => value.toInt();

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NumberParameter &&
          runtimeType == other.runtimeType &&
          value == other.value;

  @override
  int get hashCode => value.hashCode;
}
