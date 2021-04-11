import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vento/src/network_state/error/result_error.dart';

part 'result.freezed.dart';

///Result
///     -> Success
///     -> Failure
@freezed
abstract class Result<T> with _$Result<T> {
  /// [Success] will provide the [T] data
  const factory Result.success({@required T data}) = Success<T>;

  /// [Failure] will provide the [ResultError]
  const factory Result.failure({@required ResultError error}) = Failure<T>;
}
