import 'package:collection/collection.dart';

import 'vector_parameter.dart';

abstract class Mat7Parameter extends VectorParameter<Mat7> {
  Mat7Parameter(
    super.name,
    super.displayName,
    super.value, {
    super.hidden,
    super.compute,
  });

  @override
  List<double> get values => value.storage;
}

class Mat7 {
  final List<double> storage;

  Mat7._(this.storage);

  factory Mat7(Iterable<double> items) {
    if (items.length != 49) {
      throw 'Array must be 49 items';
    }
    return Mat7._(List.unmodifiable(items));
  }

  double operator [](int index) => storage[index];

  Mat7 copyWith({
    required Map<int, double> items,
  }) {
    return Mat7(
      storage.mapIndexed((i, e) => items[i] ?? e),
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Mat7 &&
          runtimeType == other.runtimeType &&
          storage == other.storage;

// coverage:ignore-start
  @override
  int get hashCode => storage.hashCode;
// coverage:ignore-end
}
