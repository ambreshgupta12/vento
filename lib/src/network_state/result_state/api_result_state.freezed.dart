// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'api_result_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ResultStateTearOff {
  const _$ResultStateTearOff();

// ignore: unused_element
  IdleState<T> idle<T>() {
    return IdleState<T>();
  }

// ignore: unused_element
  LoadingState<T> loading<T>() {
    return LoadingState<T>();
  }

// ignore: unused_element
  DataState<T> data<T>({@required T data}) {
    return DataState<T>(
      data: data,
    );
  }

// ignore: unused_element
  ErrorState<T> error<T>({@required ResultError resultError}) {
    return ErrorState<T>(
      resultError: resultError,
    );
  }

// ignore: unused_element
  NextLoadingState<T> nextPageLoading<T>({@required T data}) {
    return NextLoadingState<T>(
      data: data,
    );
  }

// ignore: unused_element
  UnNotifiedErrorState<T> unNotifiedError<T>(
      {@required T data, @required ResultError resultError}) {
    return UnNotifiedErrorState<T>(
      data: data,
      resultError: resultError,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ResultState = _$ResultStateTearOff();

/// @nodoc
mixin _$ResultState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult idle(),
    @required TResult loading(),
    @required TResult data(T data),
    @required TResult error(ResultError resultError),
    @required TResult nextPageLoading(T data),
    @required TResult unNotifiedError(T data, ResultError resultError),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult idle(),
    TResult loading(),
    TResult data(T data),
    TResult error(ResultError resultError),
    TResult nextPageLoading(T data),
    TResult unNotifiedError(T data, ResultError resultError),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult idle(IdleState<T> value),
    @required TResult loading(LoadingState<T> value),
    @required TResult data(DataState<T> value),
    @required TResult error(ErrorState<T> value),
    @required TResult nextPageLoading(NextLoadingState<T> value),
    @required TResult unNotifiedError(UnNotifiedErrorState<T> value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult idle(IdleState<T> value),
    TResult loading(LoadingState<T> value),
    TResult data(DataState<T> value),
    TResult error(ErrorState<T> value),
    TResult nextPageLoading(NextLoadingState<T> value),
    TResult unNotifiedError(UnNotifiedErrorState<T> value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ResultStateCopyWith<T, $Res> {
  factory $ResultStateCopyWith(
          ResultState<T> value, $Res Function(ResultState<T>) then) =
      _$ResultStateCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$ResultStateCopyWithImpl<T, $Res>
    implements $ResultStateCopyWith<T, $Res> {
  _$ResultStateCopyWithImpl(this._value, this._then);

  final ResultState<T> _value;
  // ignore: unused_field
  final $Res Function(ResultState<T>) _then;
}

/// @nodoc
abstract class $IdleStateCopyWith<T, $Res> {
  factory $IdleStateCopyWith(
          IdleState<T> value, $Res Function(IdleState<T>) then) =
      _$IdleStateCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$IdleStateCopyWithImpl<T, $Res>
    extends _$ResultStateCopyWithImpl<T, $Res>
    implements $IdleStateCopyWith<T, $Res> {
  _$IdleStateCopyWithImpl(
      IdleState<T> _value, $Res Function(IdleState<T>) _then)
      : super(_value, (v) => _then(v as IdleState<T>));

  @override
  IdleState<T> get _value => super._value as IdleState<T>;
}

/// @nodoc
class _$IdleState<T> with DiagnosticableTreeMixin implements IdleState<T> {
  const _$IdleState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResultState<$T>.idle()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ResultState<$T>.idle'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is IdleState<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult idle(),
    @required TResult loading(),
    @required TResult data(T data),
    @required TResult error(ResultError resultError),
    @required TResult nextPageLoading(T data),
    @required TResult unNotifiedError(T data, ResultError resultError),
  }) {
    assert(idle != null);
    assert(loading != null);
    assert(data != null);
    assert(error != null);
    assert(nextPageLoading != null);
    assert(unNotifiedError != null);
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult idle(),
    TResult loading(),
    TResult data(T data),
    TResult error(ResultError resultError),
    TResult nextPageLoading(T data),
    TResult unNotifiedError(T data, ResultError resultError),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult idle(IdleState<T> value),
    @required TResult loading(LoadingState<T> value),
    @required TResult data(DataState<T> value),
    @required TResult error(ErrorState<T> value),
    @required TResult nextPageLoading(NextLoadingState<T> value),
    @required TResult unNotifiedError(UnNotifiedErrorState<T> value),
  }) {
    assert(idle != null);
    assert(loading != null);
    assert(data != null);
    assert(error != null);
    assert(nextPageLoading != null);
    assert(unNotifiedError != null);
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult idle(IdleState<T> value),
    TResult loading(LoadingState<T> value),
    TResult data(DataState<T> value),
    TResult error(ErrorState<T> value),
    TResult nextPageLoading(NextLoadingState<T> value),
    TResult unNotifiedError(UnNotifiedErrorState<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class IdleState<T> implements ResultState<T> {
  const factory IdleState() = _$IdleState<T>;
}

/// @nodoc
abstract class $LoadingStateCopyWith<T, $Res> {
  factory $LoadingStateCopyWith(
          LoadingState<T> value, $Res Function(LoadingState<T>) then) =
      _$LoadingStateCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$LoadingStateCopyWithImpl<T, $Res>
    extends _$ResultStateCopyWithImpl<T, $Res>
    implements $LoadingStateCopyWith<T, $Res> {
  _$LoadingStateCopyWithImpl(
      LoadingState<T> _value, $Res Function(LoadingState<T>) _then)
      : super(_value, (v) => _then(v as LoadingState<T>));

  @override
  LoadingState<T> get _value => super._value as LoadingState<T>;
}

/// @nodoc
class _$LoadingState<T>
    with DiagnosticableTreeMixin
    implements LoadingState<T> {
  const _$LoadingState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResultState<$T>.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ResultState<$T>.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadingState<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult idle(),
    @required TResult loading(),
    @required TResult data(T data),
    @required TResult error(ResultError resultError),
    @required TResult nextPageLoading(T data),
    @required TResult unNotifiedError(T data, ResultError resultError),
  }) {
    assert(idle != null);
    assert(loading != null);
    assert(data != null);
    assert(error != null);
    assert(nextPageLoading != null);
    assert(unNotifiedError != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult idle(),
    TResult loading(),
    TResult data(T data),
    TResult error(ResultError resultError),
    TResult nextPageLoading(T data),
    TResult unNotifiedError(T data, ResultError resultError),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult idle(IdleState<T> value),
    @required TResult loading(LoadingState<T> value),
    @required TResult data(DataState<T> value),
    @required TResult error(ErrorState<T> value),
    @required TResult nextPageLoading(NextLoadingState<T> value),
    @required TResult unNotifiedError(UnNotifiedErrorState<T> value),
  }) {
    assert(idle != null);
    assert(loading != null);
    assert(data != null);
    assert(error != null);
    assert(nextPageLoading != null);
    assert(unNotifiedError != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult idle(IdleState<T> value),
    TResult loading(LoadingState<T> value),
    TResult data(DataState<T> value),
    TResult error(ErrorState<T> value),
    TResult nextPageLoading(NextLoadingState<T> value),
    TResult unNotifiedError(UnNotifiedErrorState<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingState<T> implements ResultState<T> {
  const factory LoadingState() = _$LoadingState<T>;
}

/// @nodoc
abstract class $DataStateCopyWith<T, $Res> {
  factory $DataStateCopyWith(
          DataState<T> value, $Res Function(DataState<T>) then) =
      _$DataStateCopyWithImpl<T, $Res>;
  $Res call({T data});
}

/// @nodoc
class _$DataStateCopyWithImpl<T, $Res>
    extends _$ResultStateCopyWithImpl<T, $Res>
    implements $DataStateCopyWith<T, $Res> {
  _$DataStateCopyWithImpl(
      DataState<T> _value, $Res Function(DataState<T>) _then)
      : super(_value, (v) => _then(v as DataState<T>));

  @override
  DataState<T> get _value => super._value as DataState<T>;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(DataState<T>(
      data: data == freezed ? _value.data : data as T,
    ));
  }
}

/// @nodoc
class _$DataState<T> with DiagnosticableTreeMixin implements DataState<T> {
  const _$DataState({@required this.data}) : assert(data != null);

  @override
  final T data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResultState<$T>.data(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ResultState<$T>.data'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DataState<T> &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $DataStateCopyWith<T, DataState<T>> get copyWith =>
      _$DataStateCopyWithImpl<T, DataState<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult idle(),
    @required TResult loading(),
    @required TResult data(T data),
    @required TResult error(ResultError resultError),
    @required TResult nextPageLoading(T data),
    @required TResult unNotifiedError(T data, ResultError resultError),
  }) {
    assert(idle != null);
    assert(loading != null);
    assert(data != null);
    assert(error != null);
    assert(nextPageLoading != null);
    assert(unNotifiedError != null);
    return data(this.data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult idle(),
    TResult loading(),
    TResult data(T data),
    TResult error(ResultError resultError),
    TResult nextPageLoading(T data),
    TResult unNotifiedError(T data, ResultError resultError),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (data != null) {
      return data(this.data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult idle(IdleState<T> value),
    @required TResult loading(LoadingState<T> value),
    @required TResult data(DataState<T> value),
    @required TResult error(ErrorState<T> value),
    @required TResult nextPageLoading(NextLoadingState<T> value),
    @required TResult unNotifiedError(UnNotifiedErrorState<T> value),
  }) {
    assert(idle != null);
    assert(loading != null);
    assert(data != null);
    assert(error != null);
    assert(nextPageLoading != null);
    assert(unNotifiedError != null);
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult idle(IdleState<T> value),
    TResult loading(LoadingState<T> value),
    TResult data(DataState<T> value),
    TResult error(ErrorState<T> value),
    TResult nextPageLoading(NextLoadingState<T> value),
    TResult unNotifiedError(UnNotifiedErrorState<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class DataState<T> implements ResultState<T> {
  const factory DataState({@required T data}) = _$DataState<T>;

  T get data;
  @JsonKey(ignore: true)
  $DataStateCopyWith<T, DataState<T>> get copyWith;
}

/// @nodoc
abstract class $ErrorStateCopyWith<T, $Res> {
  factory $ErrorStateCopyWith(
          ErrorState<T> value, $Res Function(ErrorState<T>) then) =
      _$ErrorStateCopyWithImpl<T, $Res>;
  $Res call({ResultError resultError});
}

/// @nodoc
class _$ErrorStateCopyWithImpl<T, $Res>
    extends _$ResultStateCopyWithImpl<T, $Res>
    implements $ErrorStateCopyWith<T, $Res> {
  _$ErrorStateCopyWithImpl(
      ErrorState<T> _value, $Res Function(ErrorState<T>) _then)
      : super(_value, (v) => _then(v as ErrorState<T>));

  @override
  ErrorState<T> get _value => super._value as ErrorState<T>;

  @override
  $Res call({
    Object resultError = freezed,
  }) {
    return _then(ErrorState<T>(
      resultError: resultError == freezed
          ? _value.resultError
          : resultError as ResultError,
    ));
  }
}

/// @nodoc
class _$ErrorState<T> with DiagnosticableTreeMixin implements ErrorState<T> {
  const _$ErrorState({@required this.resultError})
      : assert(resultError != null);

  @override
  final ResultError resultError;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResultState<$T>.error(resultError: $resultError)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ResultState<$T>.error'))
      ..add(DiagnosticsProperty('resultError', resultError));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ErrorState<T> &&
            (identical(other.resultError, resultError) ||
                const DeepCollectionEquality()
                    .equals(other.resultError, resultError)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(resultError);

  @JsonKey(ignore: true)
  @override
  $ErrorStateCopyWith<T, ErrorState<T>> get copyWith =>
      _$ErrorStateCopyWithImpl<T, ErrorState<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult idle(),
    @required TResult loading(),
    @required TResult data(T data),
    @required TResult error(ResultError resultError),
    @required TResult nextPageLoading(T data),
    @required TResult unNotifiedError(T data, ResultError resultError),
  }) {
    assert(idle != null);
    assert(loading != null);
    assert(data != null);
    assert(error != null);
    assert(nextPageLoading != null);
    assert(unNotifiedError != null);
    return error(resultError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult idle(),
    TResult loading(),
    TResult data(T data),
    TResult error(ResultError resultError),
    TResult nextPageLoading(T data),
    TResult unNotifiedError(T data, ResultError resultError),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(resultError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult idle(IdleState<T> value),
    @required TResult loading(LoadingState<T> value),
    @required TResult data(DataState<T> value),
    @required TResult error(ErrorState<T> value),
    @required TResult nextPageLoading(NextLoadingState<T> value),
    @required TResult unNotifiedError(UnNotifiedErrorState<T> value),
  }) {
    assert(idle != null);
    assert(loading != null);
    assert(data != null);
    assert(error != null);
    assert(nextPageLoading != null);
    assert(unNotifiedError != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult idle(IdleState<T> value),
    TResult loading(LoadingState<T> value),
    TResult data(DataState<T> value),
    TResult error(ErrorState<T> value),
    TResult nextPageLoading(NextLoadingState<T> value),
    TResult unNotifiedError(UnNotifiedErrorState<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorState<T> implements ResultState<T> {
  const factory ErrorState({@required ResultError resultError}) =
      _$ErrorState<T>;

  ResultError get resultError;
  @JsonKey(ignore: true)
  $ErrorStateCopyWith<T, ErrorState<T>> get copyWith;
}

/// @nodoc
abstract class $NextLoadingStateCopyWith<T, $Res> {
  factory $NextLoadingStateCopyWith(
          NextLoadingState<T> value, $Res Function(NextLoadingState<T>) then) =
      _$NextLoadingStateCopyWithImpl<T, $Res>;
  $Res call({T data});
}

/// @nodoc
class _$NextLoadingStateCopyWithImpl<T, $Res>
    extends _$ResultStateCopyWithImpl<T, $Res>
    implements $NextLoadingStateCopyWith<T, $Res> {
  _$NextLoadingStateCopyWithImpl(
      NextLoadingState<T> _value, $Res Function(NextLoadingState<T>) _then)
      : super(_value, (v) => _then(v as NextLoadingState<T>));

  @override
  NextLoadingState<T> get _value => super._value as NextLoadingState<T>;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(NextLoadingState<T>(
      data: data == freezed ? _value.data : data as T,
    ));
  }
}

/// @nodoc
class _$NextLoadingState<T>
    with DiagnosticableTreeMixin
    implements NextLoadingState<T> {
  const _$NextLoadingState({@required this.data}) : assert(data != null);

  @override
  final T data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResultState<$T>.nextPageLoading(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ResultState<$T>.nextPageLoading'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NextLoadingState<T> &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $NextLoadingStateCopyWith<T, NextLoadingState<T>> get copyWith =>
      _$NextLoadingStateCopyWithImpl<T, NextLoadingState<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult idle(),
    @required TResult loading(),
    @required TResult data(T data),
    @required TResult error(ResultError resultError),
    @required TResult nextPageLoading(T data),
    @required TResult unNotifiedError(T data, ResultError resultError),
  }) {
    assert(idle != null);
    assert(loading != null);
    assert(data != null);
    assert(error != null);
    assert(nextPageLoading != null);
    assert(unNotifiedError != null);
    return nextPageLoading(this.data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult idle(),
    TResult loading(),
    TResult data(T data),
    TResult error(ResultError resultError),
    TResult nextPageLoading(T data),
    TResult unNotifiedError(T data, ResultError resultError),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (nextPageLoading != null) {
      return nextPageLoading(this.data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult idle(IdleState<T> value),
    @required TResult loading(LoadingState<T> value),
    @required TResult data(DataState<T> value),
    @required TResult error(ErrorState<T> value),
    @required TResult nextPageLoading(NextLoadingState<T> value),
    @required TResult unNotifiedError(UnNotifiedErrorState<T> value),
  }) {
    assert(idle != null);
    assert(loading != null);
    assert(data != null);
    assert(error != null);
    assert(nextPageLoading != null);
    assert(unNotifiedError != null);
    return nextPageLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult idle(IdleState<T> value),
    TResult loading(LoadingState<T> value),
    TResult data(DataState<T> value),
    TResult error(ErrorState<T> value),
    TResult nextPageLoading(NextLoadingState<T> value),
    TResult unNotifiedError(UnNotifiedErrorState<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (nextPageLoading != null) {
      return nextPageLoading(this);
    }
    return orElse();
  }
}

abstract class NextLoadingState<T> implements ResultState<T> {
  const factory NextLoadingState({@required T data}) = _$NextLoadingState<T>;

  T get data;
  @JsonKey(ignore: true)
  $NextLoadingStateCopyWith<T, NextLoadingState<T>> get copyWith;
}

/// @nodoc
abstract class $UnNotifiedErrorStateCopyWith<T, $Res> {
  factory $UnNotifiedErrorStateCopyWith(UnNotifiedErrorState<T> value,
          $Res Function(UnNotifiedErrorState<T>) then) =
      _$UnNotifiedErrorStateCopyWithImpl<T, $Res>;
  $Res call({T data, ResultError resultError});
}

/// @nodoc
class _$UnNotifiedErrorStateCopyWithImpl<T, $Res>
    extends _$ResultStateCopyWithImpl<T, $Res>
    implements $UnNotifiedErrorStateCopyWith<T, $Res> {
  _$UnNotifiedErrorStateCopyWithImpl(UnNotifiedErrorState<T> _value,
      $Res Function(UnNotifiedErrorState<T>) _then)
      : super(_value, (v) => _then(v as UnNotifiedErrorState<T>));

  @override
  UnNotifiedErrorState<T> get _value => super._value as UnNotifiedErrorState<T>;

  @override
  $Res call({
    Object data = freezed,
    Object resultError = freezed,
  }) {
    return _then(UnNotifiedErrorState<T>(
      data: data == freezed ? _value.data : data as T,
      resultError: resultError == freezed
          ? _value.resultError
          : resultError as ResultError,
    ));
  }
}

/// @nodoc
class _$UnNotifiedErrorState<T>
    with DiagnosticableTreeMixin
    implements UnNotifiedErrorState<T> {
  const _$UnNotifiedErrorState(
      {@required this.data, @required this.resultError})
      : assert(data != null),
        assert(resultError != null);

  @override
  final T data;
  @override
  final ResultError resultError;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResultState<$T>.unNotifiedError(data: $data, resultError: $resultError)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ResultState<$T>.unNotifiedError'))
      ..add(DiagnosticsProperty('data', data))
      ..add(DiagnosticsProperty('resultError', resultError));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UnNotifiedErrorState<T> &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.resultError, resultError) ||
                const DeepCollectionEquality()
                    .equals(other.resultError, resultError)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(resultError);

  @JsonKey(ignore: true)
  @override
  $UnNotifiedErrorStateCopyWith<T, UnNotifiedErrorState<T>> get copyWith =>
      _$UnNotifiedErrorStateCopyWithImpl<T, UnNotifiedErrorState<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult idle(),
    @required TResult loading(),
    @required TResult data(T data),
    @required TResult error(ResultError resultError),
    @required TResult nextPageLoading(T data),
    @required TResult unNotifiedError(T data, ResultError resultError),
  }) {
    assert(idle != null);
    assert(loading != null);
    assert(data != null);
    assert(error != null);
    assert(nextPageLoading != null);
    assert(unNotifiedError != null);
    return unNotifiedError(this.data, resultError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult idle(),
    TResult loading(),
    TResult data(T data),
    TResult error(ResultError resultError),
    TResult nextPageLoading(T data),
    TResult unNotifiedError(T data, ResultError resultError),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unNotifiedError != null) {
      return unNotifiedError(this.data, resultError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult idle(IdleState<T> value),
    @required TResult loading(LoadingState<T> value),
    @required TResult data(DataState<T> value),
    @required TResult error(ErrorState<T> value),
    @required TResult nextPageLoading(NextLoadingState<T> value),
    @required TResult unNotifiedError(UnNotifiedErrorState<T> value),
  }) {
    assert(idle != null);
    assert(loading != null);
    assert(data != null);
    assert(error != null);
    assert(nextPageLoading != null);
    assert(unNotifiedError != null);
    return unNotifiedError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult idle(IdleState<T> value),
    TResult loading(LoadingState<T> value),
    TResult data(DataState<T> value),
    TResult error(ErrorState<T> value),
    TResult nextPageLoading(NextLoadingState<T> value),
    TResult unNotifiedError(UnNotifiedErrorState<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unNotifiedError != null) {
      return unNotifiedError(this);
    }
    return orElse();
  }
}

abstract class UnNotifiedErrorState<T> implements ResultState<T> {
  const factory UnNotifiedErrorState(
      {@required T data,
      @required ResultError resultError}) = _$UnNotifiedErrorState<T>;

  T get data;
  ResultError get resultError;
  @JsonKey(ignore: true)
  $UnNotifiedErrorStateCopyWith<T, UnNotifiedErrorState<T>> get copyWith;
}
