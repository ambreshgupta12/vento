import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vento/src/network_state/error/result_error.dart';

part 'result_state.freezed.dart';

///[ResultState] is will be used the manage the state
///[ResultState] have 6 different state for different scenarios
///States are:
///--> [IdleState]
///--> [LoadingState]
///--> [DataState]
///--> [ErrorState]
///--> [NextLoadingState]
///--> [UnNotifiedErrorState]
@freezed
abstract class ResultState<T> with _$ResultState<T> {
  ///[IdleState] is the initial state where
  ///nothing is happening in the the [ResultState]
  const factory ResultState.idle() = IdleState<T>;

  ///[LoadingState] will tell that the current state of [ResultState]
  ///is [LoadingState]
  const factory ResultState.loading() = LoadingState<T>;

  ///[DataState] will be shown when the data is available
  const factory ResultState.data({@required T data}) = DataState<T>;

  ///[ErrorState] will be shown when the data is available
  const factory ResultState.error({@required ResultError resultError}) =
      ErrorState<T>;

  ///[NextLoadingState] is actually a [LoadingState] but with the data
  const factory ResultState.nextPageLoading({@required T data}) =
      NextLoadingState<T>;

  ///[UnNotifiedErrorState] is actually a [ErrorState] but with the data
  const factory ResultState.unNotifiedError(
      {@required T data,
      @required ResultError resultError}) = UnNotifiedErrorState<T>;
}

///[ResultState] Extensions to make thinks easier
extension ResultStateExt<T> on ResultState<T> {
  /// getter to check if the [ResultState] is [LoadingState].
  bool get isLoadingState => this is LoadingState<T>;

  /// getter to check
  /// if the [ResultState] is [ErrorState] or [UnNotifiedErrorState].
  bool get isErrorState =>
      this is ErrorState<T> || this is UnNotifiedErrorState<T>;

  /// getter to check if the [ResultState] is [DataState] or [NextLoadingState]
  /// because in both of the case we are getting the data.
  bool get isDataState => this is DataState<T> || this is NextLoadingState<T>;

  /// It check if the [ResultState] is [DataState] or [NextLoadingState]
  /// then return the data else null.
  T get dataState {
    if (this is DataState<T>) {
      return (this as DataState<T>).data;
    } else if (this is NextLoadingState<T>) {
      return (this as NextLoadingState<T>).data;
    } else {
      return null;
    }
  }

  /// It check if the [ResultState] is [ErrorState] or [ResultState]
  /// then return the [ResultState] else null.
  ResultError get errorState {
    if (this is ErrorState<T>) {
      return (this as ErrorState<T>).resultError;
    } else if (this is UnNotifiedErrorState<T>) {
      return (this as UnNotifiedErrorState<T>).resultError;
    } else {
      return null;
    }
  }
}
