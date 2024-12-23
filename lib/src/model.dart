abstract class Model {
  static String? stringFromJson(Map<String, dynamic> json, String attribute,
      {String? defaultValue}) {
    try {
      return json[attribute] != null
          ? json[attribute].toString()
          : defaultValue;
    } catch (e) {
      throw Exception('Error while parsing $attribute[$e]');
    }
  }

  static DateTime? dateFromJson(Map<String, dynamic> json, String attribute,
      {DateTime? defaultValue}) {
    try {
      return json[attribute] != null
          ? DateTime.parse(json[attribute]).toLocal()
          : defaultValue;
    } catch (e) {
      throw Exception('Error while parsing $attribute[$e]');
    }
  }

  static int? intFromJson(Map<String, dynamic> json, String attribute,
      {int? defaultValue}) {
    try {
      if (json[attribute] != null) {
        if (json[attribute] is int) {
          return json[attribute];
        }
        return int.parse(json[attribute]);
      }
      return defaultValue;
    } catch (e) {
      throw Exception('Error while parsing $attribute[$e]');
    }
  }

  static double? doubleFromJson(Map<String, dynamic> json, String attribute,
      {int decimal = 2, double? defaultValue}) {
    try {
      if (json[attribute] != null) {
        if (json[attribute] is double) {
          return double.parse(json[attribute].toStringAsFixed(decimal));
        }
        if (json[attribute] is int) {
          return double.parse(
              json[attribute].toDouble().toStringAsFixed(decimal));
        }
        return double.parse(
            double.tryParse(json[attribute])!.toStringAsFixed(decimal));
      }
      return defaultValue;
    } catch (e) {
      throw Exception('Error while parsing $attribute[$e]');
    }
  }

  static bool? boolFromJson(Map<String, dynamic> json, String attribute,
      {bool? defaultValue}) {
    try {
      if (json[attribute] != null) {
        if (json[attribute] is bool) {
          return json[attribute];
        } else if ((json[attribute] is String) &&
            !['0', '', 'false'].contains(json[attribute])) {
          return true;
        } else if ((json[attribute] is int) &&
            ![0, -1].contains(json[attribute])) {
          return true;
        }
        return false;
      }
      return defaultValue;
    } catch (e) {
      throw Exception('Error while parsing $attribute[$e]');
    }
  }

  static List<T>? listFromJson<T>(Map<String, dynamic> json, String attribute,
      T Function(Map<String, dynamic>) callback) {
    try {
      List<T>? list = <T>[];
      if (json[attribute] != null &&
          json[attribute] is List &&
          json[attribute].length > 0) {
        json[attribute].forEach((v) {
          if (v is Map<String, dynamic>) {
            list?.add(callback(v));
          }
        });
      } else {
        list = null;
      }
      return list;
    } catch (e) {
      throw Exception('Error while parsing $attribute[$e]');
    }
  }
}
