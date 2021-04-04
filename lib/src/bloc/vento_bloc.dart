import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vento/src/network_state/error/result_error.dart';
import 'package:vento/src/network_state/network_state.dart';

typedef VoidCallbackKKK<G, T> = T Function(G value);

abstract class VentoBloc<T> extends Cubit<ResultState<T>> {
  VentoBloc() : super(ResultState.idle());

  T _data;

  T get data => _data;

  bool get isLoading => state is LoadingState;

  bool get isDataState => state is DataState;

  bool get isErrorState => state is ErrorState;

  emitLoading() {
    emit(ResultState.loading());
  }

  emitData(T data) {
    _data = data;
    emit(ResultState<T>.data(data: data));
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
    bool isUnNotifiedError = false,
    VoidCallback onLoading,
    ValueChanged<ResultError> onError,
    ValueChanged<T> onData,
  }) async {
    if (!isUpdate) {
      if (onLoading != null) onLoading();
      emitLoading();
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
    Result<G> apiData, {
    @required VoidCallbackKKK<G, T> emitValue,
    bool isUnNotifiedError = false,
    bool isUpdate = false,
    VoidCallback onLoading,
    ValueChanged<ResultError> onError,
    ValueChanged<T> onData,
  }) async {
    if (!isUpdate) {
      if (onLoading != null) onLoading();
      emitLoading();
    }
    (apiData).map(success: (Success<G> value) {
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
