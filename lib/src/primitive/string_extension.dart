import 'package:flutter/material.dart';

extension StringExtensions on String {
  String getFirstLetter() {
    if (isEmpty) return '';
    return this[0];
  }

  String getLastLetter() {
    if (isEmpty) return '';
    return this[length - 1];
  }

  /// Checks if the string contains any type of emoji.
  bool get containsEmoji {
    final regex = RegExp(
        r'(\u00a9|\u00ae|[\u2000-\u3300]|[\ud83c-\ud83e][\udc00-\udfff]|[\u0023-\u0039]\ufe0f?\u20e3?|[\u2194-\u21aa]|[\u2300-\u2b55]|[\u2934-\u2b55]|[\u3030-\u303d]|[\u3297-\u3299]|[\u2049-\u2139]|[\ud83c][\udde6-\uddff]|[\ud83c][\udde8-\uddec]|[\ud83c][\uddee-\uddfa]|[\ud83c][\uddfb-\uddff]|[\ud83d][\ude00-\ude4f]|[\ud83d][\ude80-\udec2]|[\ud83d][\uded0-\udee5]|[\ud83d][\udee7-\udfff]|[\ud83d][\udc00-\uddff]|[\ud83e][\udd00-\uddff]|[\ud83e][\udc00-\udfff]|[\ud83e][\udc00-\uddff])');
    return regex.hasMatch(this);
  }

  bool get doesNotContainEmoji => !containsEmoji;

  bool isNumeric() {
    if (isEmpty) return false;
    final numberRegex = RegExp(r'^-?[0-9]+(\.[0-9]+)?$');
    return numberRegex.hasMatch(this);
  }

  String isremoveAllWhitespace() {
    return replaceAll(RegExp(r'\s+'), '');
  }

  bool isPalindrome() {
    final trimmed = isremoveAllWhitespace().toLowerCase();
    return trimmed == trimmed.split('').reversed.join('');
  }

  String capitalizeEachWord() {
    return split(' ')
        .map((word) => word.isNotEmpty
        ? word[0].toUpperCase() + word.substring(1).toLowerCase()
        : word)
        .join(' ');
  }

  String toCamelCase() {
    return split(' ')
        .map((word) => word.isEmpty
            ? word
            : word[0].toUpperCase() + word.substring(1).toLowerCase())
        .join('');
  }

  /// Converts the string to snake case.
  String toSnakeCase() {
    return replaceAllMapped(
            RegExp(r'[A-Z]'), (match) => '_${match.group(0)!.toLowerCase()}')
        .replaceAll(RegExp(r'\s+'), '_')
        .toLowerCase();
  }

  /// Reverses the string.
  String reverse() {
    return split('').reversed.join('');
  }

  /// Checks if the string contains only alphabets.
  bool isAlphabetic() {
    return RegExp(r'^[a-zA-Z]+$').hasMatch(this);
  }

  /// Checks if the string contains only alphanumeric characters.
  bool isAlphanumeric() {
    return RegExp(r'^[a-zA-Z0-9]+$').hasMatch(this);
  }

  /// Returns the initials of the string.
  String initials() {
    return split(' ')
        .where((word) => word.isNotEmpty)
        .map((word) => word[0].toUpperCase())
        .join('');
  }

  /// Checks if the string is a strong password.
  /// A strong password must:
  /// - Be at least 8 characters long
  /// - Contain at least one uppercase letter
  /// - Contain at least one lowercase letter
  /// - Contain at least one digit
  /// - Contain at least one special character
  bool isStrongPassword() {
    final passwordRegex = RegExp(
        r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[@$!%*?&#])[A-Za-z\d@$!%*?&#]{8,}$');
    return passwordRegex.hasMatch(this);
  }

  /// Checks if the string is a proper name.
  ///
  /// A proper name must:
  /// - Not be empty.
  /// - Start with a capital letter.
  /// - Contain only letters, spaces, and hyphens.
  ///
  /// Returns `true` if the string is a proper name, otherwise `false`.

  /// Converts the string to a double or returns `null` if conversion fails.
  double? toDouble() {
    return double.tryParse(this);
  }

  /// Converts the string to an int or returns `null` if conversion fails.
  int? toInt() {
    return int.tryParse(this);
  }

  /// Returns the number of words in the string.
  int get wordCount {
    if (isEmpty) return 0;
    return split(RegExp(r'\s+')).where((word) => word.isNotEmpty).length;
  }

  /// Parses [this] to an [int] or returns null.
  /// Radix can be between 2 and 36.
  int? toIntOrNull({int? radix}) => int.tryParse(this, radix: radix);

  /// Wraps the string with [prefix] and [suffix].
  /// If [suffix] is not provided, [prefix] is used as [suffix].
  ///
  /// Examples:
  ///   - 'hello'.wrap("*") returns '*hello*'
  ///   - 'html'.wrap('<', '>') returns '<html>'
  String wrap(String prefix, [String? suffix]) =>
      '$prefix$this${suffix ?? prefix}';

  /// Removes [prefix] and [suffix] from the string if they exist.
  /// If [suffix] is not provided, [prefix] is used as [suffix].
  ///
  /// Examples:
  ///   - '*hello*'.unwrap("*") returns 'hello'
  ///   - '<html>'.unwrap('<', '>') returns 'html'
  String unwrap(String prefix, [String? suffix]) {
    suffix ??= prefix;
    if (startsWith(prefix)) {
      return substring(
        prefix.length,
        endsWith(suffix) ? length - suffix.length : length,
      );
    }
    return endsWith(suffix) ? substring(0, length - suffix.length) : this;
  }

  bool? toBoolOrNull() {
    final lowerCaseStr = toLowerCase();
    if (lowerCaseStr == 'true') return true;
    if (lowerCaseStr == 'false') return false;
    return toIntOrNull() != null && toIntOrNull()! > 0;
  }

  /// Checks if the string can be parsed as a binary number (only contains 1's and 0's).
  bool get isBinary => toIntOrNull(radix: 2) != null;

  /// Checks if the string can be parsed as a hexadecimal number, which only
  /// contains characters 0-9 and A-F or a-f.
  bool get isHexadecimal => toIntOrNull(radix: 16) != null;

  /// Checks if the string can be parsed as an octal number, which only
  /// contains characters 0-7.
  bool get isOctal => toIntOrNull(radix: 8) != null;

  /// Checks if the string can be parsed as a decimal number.
  bool get isDecimal => toIntOrNull() != null;

  /// Checks if the string can be parsed into a double.
  bool get isDouble => toDoubleOrNull() != null;

  /// Tries to parse the string into a double, returning null if parsing fails.
  double? toDoubleOrNull() => double.tryParse(this);

  List<String> get words =>
      trim().split(' ').where((element) => element.hasContent).toList();

  bool get isBlank => trim().isEmpty;

  /// Tries to parse the string into a [DateTime], returning null if parsing fails.
  DateTime? toDateTimeOrNull() => DateTime.tryParse(this);

  bool equalsToIgnoreCase(String matcher) =>
      toLowerCase() == matcher.toLowerCase();

  /// Counts occurrences of a character in a string.
  ///
  /// - Parameters:
  ///   - match: The character to count.
  ///   - caseSensitive: Whether the match is case-sensitive. Default is true.
  /// - Returns: The count of the character.
  int countOccurrences(String match, {bool caseSensitive = true}) {
    var count = 0;
    for (final char in characters) {
      if (caseSensitive ? char == match : char.equalsToIgnoreCase(match)) {
        count++;
      }
    }
    return count;
  }

  /// Toggles the case of each character.
  String get toggledCase => characters
      .map((e) => e.toUpperCase() == e ? e.toLowerCase() : e.toUpperCase())
      .join();
}

// Extension on String to convert a hex color string to a Color object.
extension ColorExtension on String {
  /// Converts a hex color string to a Color object.
  Color toColor() {
    var hexStringColor = this;
    final buffer = StringBuffer();

    // Validate hex string length and format
    if (hexStringColor.length == 6 || hexStringColor.length == 7) {
      buffer.write('ff'); // Add 'ff' for full opacity
      buffer
          .write(hexStringColor.replaceFirst("#", "")); // Remove '#' if present
      return Color(
          int.parse(buffer.toString(), radix: 16)); // Parse and create Color
    }
    throw ArgumentError('Invalid hex color format'); // Invalid format
  }
}

/// Class to handle hex color codes with optional alpha component.
class HexColor extends Color {
  /// Converts a hex color string to an integer color value.
  static int getColorFromHex(String hexColor) {
    hexColor = hexColor
        .toUpperCase()
        .replaceAll("#", ""); // Normalize hex color string
    if (hexColor.length == 6) hexColor = "FF$hexColor"; // Add alpha if missing
    return int.parse(hexColor, radix: 16); // Parse and return color value
  }

  /// Creates a HexColor instance from a hex color string.
  HexColor(final String hexColor) : super(getColorFromHex(hexColor));
}

/// Extension on [Color] to provide utility methods for color manipulation and conversion.
extension ColorExtensions on Color {
  /// Darkens the color by blending it with black.
  ///
  /// The [amount] parameter determines how much to darken the color.
  /// A value of 0.0 returns the original color, and a value of 1.0 returns black.
  /// Defaults to 0.1 if not specified.
  Color darken([double amount = .1]) => Color.lerp(this, Colors.black, amount)!;

  /// Lightens the color by blending it with white.
  ///
  /// The [amount] parameter determines how much to lighten the color.
  /// A value of 0.0 returns the original color, and a value of 1.0 returns white.
  /// Defaults to 0.1 if not specified.
  Color lighten([double amount = .1]) =>
      Color.lerp(this, Colors.white, amount)!;
}

/// Extension on [FormState] to provide utility methods for form management.
extension FormExtensions on FormState {
  /// Validates all the form fields.
  ///
  /// This method iterates through all the form fields and validates them
  /// based on the validation logic provided in each field's validator function.
  /// It returns `true` if all fields are valid; otherwise, it returns `false`.
  bool validateAllFields() {
    return validate();
  }

  /// Resets all the form fields to their initial values.
  ///
  /// This method resets the state of all the form fields to their initial
  /// values, clearing any validation errors that might be displayed.
  void resetAllFields() {
    reset();
  }
}

/// Extension on [String?] to provide utility methods for null and empty checks.
extension NullableString on String? {
  bool get isNotNullOrEmpty {
    var stringValue = this;
    return stringValue != null && stringValue.isNotEmpty;
  }

  bool get hasContent => isNotNullOrEmpty;

  String get orEmpty => this ?? '';
}
