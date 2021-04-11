import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vento/src/network_state/error/result_error.dart';
import 'package:vento/src/network_state/network_state.dart';

///EmitValueCallBack will take the data what
///every you want to show in the ResultState
typedef EmitValueCallBack<G, T> = T Function(G value);

///VentoBloc is a wrapper bloc class on top of the flutter_bloc Cubit class
abstract class VentoBloc<@required T> extends Cubit<ResultState<T>> {
  ///Initially the state of the ResultState
  VentoBloc() : super(const ResultState.idle());

  T _data;

  /// getter for T data
  T get data => _data;

  /// emitLoading method will tell the cubit that
  /// emit the Loading State
  void emitLoading() {
    emit(const ResultState.loading());
  }

  /// emitData will add the data state
  void emitData(T data) {
    _data = data;
    emit(ResultState<T>.data(data: data));
  }

  /// emitNextLoading will tell the state that
  /// emit Loading with already data available
  /// which is emitNextLoading
  void emitNextLoading() {
    final data = state.dataState;
    assert(data != null, '$data cannot be null');
    _data = data;
    emit(ResultState<T>.nextPageLoading(data: data));
  }

  /// emit the error state which will replace the it with
  /// previous state
  void emitError(ResultError error) {
    emit(ResultState.error(resultError: error));
  }

  ///
  void emitUnNotifiedError(ResultError error) {
    emit(
      ResultState.unNotifiedError(resultError: error, data: _data),
    );
  }

  ///---------------------Important----------------------
  ///if the T data is same as the data coming from api or other
  ///then use [getData] otherwise [getSpecificApiData]

  ///[getData] will take the [Future] data and actions automatically
  ///Initially loading will get called
  ///then it will check for data
  ///if data is available then data state will be called else error state
  Future<void> getData(
    Future<Result<T>> data, {
    bool isUpdate = false,
    bool isNextLoading = false,
    bool isUnNotifiedError = false,
    VoidCallback onLoading,
    ValueChanged<ResultError> onError,
    ValueChanged<T> onData,
  }) async {
    if (isNextLoading) {
      if (onLoading != null) onLoading();
      emitNextLoading();
    } else {
      if (!isUpdate) {
        if (onLoading != null) onLoading();
        emitLoading();
      }
    }
    (await data).when(success: (T data) {
      if (onData != null) onData(data);
      emitData(data);
    }, failure: (ResultError error) {
      if (onError != null) onError(error);
      if (!isUpdate) {
        if (isUnNotifiedError) {
          emitUnNotifiedError(error);
        } else {
          emitError(error);
        }
      } else {
        emitUnNotifiedError(error);
      }
    });
  }

  ///[getData] will take the [Future] data and actions automatically
  ///emitValue will manipulate the data
  ///Initially loading will get called
  ///then it will check for data
  ///if data is available then data state will be called else error state
  Future<void> getSpecificApiData<@required G>(
    Future<Result<G>> apiData, {
    @required EmitValueCallBack<G, T> emitValue,
    bool isUnNotifiedError = false,
    bool isUpdate = false,
    bool isNextLoading = false,
    VoidCallback onLoading,
    ValueChanged<ResultError> onError,
    ValueChanged<T> onData,
  }) async {
    assert(emitValue != null, '$emitValue cannot be null');
    if (isNextLoading) {
      if (onLoading != null) onLoading();
      emitNextLoading();
    } else {
      if (!isUpdate) {
        if (onLoading != null) onLoading();
        emitLoading();
      }
      (await apiData).when(success: (G responseData) {
        final data = emitValue(responseData);
        if (onData != null) onData(data);
        emitData(data);
      }, failure: (ResultError error) {
        if (onError != null) onError(error);
        if (!isUpdate) {
          if (isUnNotifiedError) {
            emitUnNotifiedError(error);
          } else {
            emitError(error);
          }
        } else {
          emitUnNotifiedError(error);
        }
      });
    }
  }
}
