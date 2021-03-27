import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vento/src/network_state/error/result_error.dart';

part 'result.freezed.dart';

@freezed
abstract class Result<T> with _$Result<T> {
  const factory Result.success({@required T data}) = Success<T>;

  const factory Result.failure({@required ResultError error}) = Failure<T>;
}
