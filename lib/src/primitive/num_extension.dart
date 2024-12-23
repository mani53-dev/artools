extension NumExtension on num {
  num get negative => sign > 0 ? -this : this;

  bool isBetween(num value1, num value2, {bool inclusive = false}) => inclusive
      ? (this >= value1 && this <= value2) || (this >= value2 && this <= value1)
      : (this > value1 && this < value2) || (this > value2 && this < value1);
}
