import 'package:collection/collection.dart';

import 'vector_parameter.dart';

abstract class Mat5Parameter extends VectorParameter<Mat5> {
  Mat5Parameter(
    super.name,
    super.displayName,
    super.value, {
    super.hidden,
    super.compute,
  });

  @override
  List<double> get values => value.storage;
}

class Mat5 {
  final List<double> storage;

  Mat5._(this.storage);

  factory Mat5(Iterable<double> items) {
    if (items.length != 25) {
      throw 'Array must be 25 items';
    }
    return Mat5._(List.unmodifiable(items));
  }

  double operator [](int index) => storage[index];

  Mat5 copyWith({
    required Map<int, double> items,
  }) {
    return Mat5(
      storage.mapIndexed((i, e) => items[i] ?? e),
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Mat5 &&
          runtimeType == other.runtimeType &&
          storage == other.storage;

// coverage:ignore-start
  @override
  int get hashCode => storage.hashCode;
// coverage:ignore-end
}
