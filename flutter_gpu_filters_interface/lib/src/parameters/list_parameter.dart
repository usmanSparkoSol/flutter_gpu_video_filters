import 'vector_parameter.dart';

abstract class ListParameter extends VectorParameter<List<double>> {
  ListParameter(
    super.name,
    super.displayName,
    super.value, {
    super.hidden,
    super.compute,
  });

  @override
  List<double> get values => value;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ListParameter &&
          runtimeType == other.runtimeType &&
          value == other.value;

  @override
  int get hashCode => value.hashCode;
}
