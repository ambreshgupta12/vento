import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vento/src/network_state/error/result_error.dart';

part 'result_state.freezed.dart';

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

extension resultState<T> on ResultState<T> {
  bool get isLoadingState {
    return this is LoadingState<T>;
  }

  bool get isErrorState {
    return this is ErrorState<T> || this is UnNotifiedErrorState<T>;
  }

  bool get isDataState {
    return this is DataState<T> || this is NextLoadingState<T>;
  }

  T get dataState {
    if (this is DataState<T>) {
      return (this as DataState<T>).data;
    } else if (this is NextLoadingState<T>) {
      return (this as NextLoadingState<T>).data;
    } else {
      return null;
    }
  }

  ResultError get errorState {
    if (this is ErrorState<T>) {
      return (this as ErrorState<T>).resultError;
    } else if (this is UnNotifiedErrorState<T>) {
      return (this as UnNotifiedErrorState<T>).resultError;
    } else
      return null;
  }
}
