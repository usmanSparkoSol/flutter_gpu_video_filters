import 'configuration_parameter.dart';

abstract class StringParameter extends ConfigurationParameter {
  String value;

  StringParameter(
    super.name,
    super.displayName,
    this.value, {
    super.hidden,
    super.compute,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StringParameter &&
          runtimeType == other.runtimeType &&
          value == other.value;

  @override
  int get hashCode => value.hashCode;
}

abstract class OptionStringParameter<T extends OptionString>
    extends ConfigurationParameter {
  T value;

  OptionStringParameter(
    super.name,
    super.displayName,
    this.value, {
    super.hidden,
    super.compute,
  });

  List<T> get values;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OptionStringParameter &&
          runtimeType == other.runtimeType &&
          value == other.value;

  @override
  int get hashCode => value.hashCode;
}

abstract class OptionString {
  String get platformKey;
}
