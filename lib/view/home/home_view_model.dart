import 'dart:math';

class HomeViewModel {
  /// Random Value Generator
  /// params: value Int
  /// return : int random number generator
  int randomValue({int value}) => Random().nextInt(value ?? 100);
}
