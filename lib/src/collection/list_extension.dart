extension ListExtension<E> on List<E> {
  bool replaceFirstWhere(E replacement, bool Function(E item) predicate) {
    if (isEmpty) return false;
    for (int index = 0; index < length; index++) {
      if (predicate(elementAt(index))) {
        this[index] = replacement;
        return true;
      }
    }
    return false;
  }

  bool replaceLastWhere(E replacement, bool Function(E item) predicate) {
    if (isEmpty) return false;
    for (int index = length - 1; index >= 0; index--) {
      if (predicate(elementAt(index))) {
        this[index] = replacement;
        return true;
      }
    }
    return false;
  }
}
