import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vento/src/network_state/error/result_error.dart';
import 'package:vento/src/network_state/network_state.dart';

typedef EmitValueCallBack<G, T> = T Function(G value);

abstract class VentoBloc<T> extends Cubit<ResultState<T>> {
  VentoBloc() : super(ResultState.idle());

  T _data;

  T get data => _data;

  emitLoading() {
    emit(ResultState.loading());
  }

  emitData(T data) {
    _data = data;
    emit(ResultState<T>.data(data: data));
  }

  emitNextLoading(T data) {
    _data = data;
    emit(ResultState<T>.nextPageLoading(data: data));
  }

  emitError(ResultError error) {
    emit(ResultState.error(resultError: error));
  }

  emitUnNotifiedError(ResultError error) {
    emit(
      ResultState.unNotifiedError(resultError: error, data: _data),
    );
  }

  getData(
    Future<Result<T>> apiData, {
    bool isUpdate = false,
    bool isNextLoading = false,
    bool isUnNotifiedError = false,
    VoidCallback onLoading,
    ValueChanged<ResultError> onError,
    ValueChanged<T> onData,
  }) async {
    if (isNextLoading) {
      if (onLoading != null) onLoading();
      _nextLoading();
    } else {
      if (!isUpdate) {
        if (onLoading != null) onLoading();
        emitLoading();
      }
    }
    (await apiData).map(success: (Success<T> value) {
      if (onData != null) onData(value.data);
      emitData(value.data);
    }, failure: (Failure<T> value) {
      if (onError != null) onError(value.error);
      if (!isUpdate) {
        if (isUnNotifiedError) {
          emitUnNotifiedError(value.error);
        } else {
          emitError(value.error);
        }
      } else {
        emitUnNotifiedError(value.error);
      }
    });
  }

  getSpecificApiData<@required G>(
    Future<Result<G>> apiData, {
    @required EmitValueCallBack<G, T> emitValue,
    bool isUnNotifiedError = false,
    bool isUpdate = false,
    bool isNextLoading = false,
    VoidCallback onLoading,
    ValueChanged<ResultError> onError,
    ValueChanged<T> onData,
  }) async {
    if (isNextLoading) {
      if (onLoading != null) onLoading();
      _nextLoading();
    } else {
      if (!isUpdate) {
        if (onLoading != null) onLoading();
        emitLoading();
      }
      (await apiData).map(success: (Success<G> value) {
        T data = emitValue(value.data);
        if (onData != null) onData(data);
        emitData(data);
      }, failure: (Failure<G> value) {
        if (onError != null) onError(value.error);
        if (!isUpdate) {
          if (isUnNotifiedError) {
            emitUnNotifiedError(value.error);
          } else {
            emitError(value.error);
          }
        } else {
          emitUnNotifiedError(value.error);
        }
      });
    }
  }

  _nextLoading() {
    var data = state.dataState;
    assert(data != null);
    emitNextLoading(data);
  }
}
