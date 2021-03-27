import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vento/src/network_state/error/result_error.dart';

part 'api_result_state.freezed.dart';

@freezed
abstract class ResultState<T> with _$ResultState<T> {
  const factory ResultState.idle() = IdleState<T>;

  const factory ResultState.loading() = LoadingState<T>;

  const factory ResultState.data({@required T data}) = DataState<T>;

  const factory ResultState.error({@required ResultError resultError}) =
      ErrorState<T>;

  const factory ResultState.nextPageLoading({@required T data}) =
      NextLoadingState<T>;

  const factory ResultState.unNotifiedError(
      {@required T data,
      @required ResultError resultError}) = UnNotifiedErrorState<T>;
}
