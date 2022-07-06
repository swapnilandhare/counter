import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_responce.freezed.dart';
part 'todo_responce.g.dart';

@freezed
class TodoResponse with _$TodoResponse {
  TodoResponse._();

  factory TodoResponse(
      {String? userId,
      int? id,
      String? title,
      bool? completed}) = _TodoResponce;

  factory TodoResponse.fromJson(Map<String, dynamic> json) =>
      _$TodoResponseFromJson(json);
}
