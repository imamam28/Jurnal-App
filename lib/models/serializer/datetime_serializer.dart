import 'package:freezed_annotation/freezed_annotation.dart';

class DatetimeSerializer implements JsonConverter<DateTime, dynamic> {
  const DatetimeSerializer();

  @override
  DateTime fromJson(dynamic date) => date ?? DateTime.now();

  @override
  String toJson(DateTime date) => date.toIso8601String();
}
