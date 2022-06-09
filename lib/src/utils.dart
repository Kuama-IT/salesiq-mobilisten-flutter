import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

final _jsonEncoder = JsonEncoder.withIndent('  ', (object) => '$object');

mixin StringifyJson {
  Map<dynamic, dynamic> toJson();

  String toString() {
    return '$runtimeType ${_jsonEncoder.convert(toJson())}';
  }
}

class DateTimeJsonConverter extends JsonConverter<DateTime?, double?> {
  const DateTimeJsonConverter();

  @override
  DateTime? fromJson(double? json) {
    if (json == null) return null;
    return DateTime.fromMillisecondsSinceEpoch(json.toInt());
  }

  @override
  double? toJson(DateTime? object) {
    return object?.millisecondsSinceEpoch.toDouble();
  }
}
