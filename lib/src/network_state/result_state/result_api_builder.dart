import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vento/src/network_state/error/result_error.dart';

import 'result_state.dart';

typedef ResultErrorWidget = Widget Function(ResultError error);
typedef ResultLoadingWidget = Widget Function();
typedef ReturnWidget = Widget Function();
typedef ResultDataWidget<T> = Widget Function(T value, bool isNextLoading);

class VentoStateBuilder<T> extends StatelessWidget {
  final ResultState<T> state;
  final ResultDataWidget<T> dataWidget;
  final ResultLoadingWidget loadingWidget;
  final ReturnWidget idleWidget;
  final ResultErrorWidget errorWidget;
  final bool showLoadingInitially;

  VentoStateBuilder({
    @required this.state,
    @required this.dataWidget,
    @required this.loadingWidget,
    @required this.errorWidget,
    this.idleWidget,
    this.showLoadingInitially = true,
  })  : assert(dataWidget != null),
        assert(loadingWidget != null),
        assert(errorWidget != null);

  @override
  Widget build(BuildContext context) {
    return state.when(
      idle: () {
        if (idleWidget == null) {
          return Container();
        }
        return idleWidget();
      },
      loading: () {
        return loadingWidget();
      },
      data: (T value) {
        return dataWidget(value, false);
      },
      error: (ResultError resultError) {
        return errorWidget(resultError);
      },
      unNotifiedError: (T data, ResultError resultError) {
        return dataWidget(data, false);
      },
      nextPageLoading: (T data) {
        return dataWidget(data, true);
      },
    );
  }
}

class VentoBlocBuilder<T extends Cubit<ResultState<S>>, S>
    extends StatelessWidget {
  final T cubit;
  final BlocWidgetListener<ResultState<S>> listener;
  final ResultDataWidget<S> dataWidget;
  final ResultLoadingWidget loadingWidget;
  final ReturnWidget idleWidget;
  final ResultErrorWidget errorWidget;
  final bool showLoadingInitially;

  VentoBlocBuilder(
      {this.cubit,
      @required this.dataWidget,
      @required this.loadingWidget,
      @required this.errorWidget,
      this.idleWidget,
      this.showLoadingInitially = true,
      this.listener})
      : assert(dataWidget != null),
        assert(loadingWidget != null),
        assert(errorWidget != null);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<T, ResultState<S>>(
      cubit: cubit,
      listener: listener ?? (context, state) {},
      builder: builder,
    );
  }

  Widget builder(context, ResultState<S> state) {
    return state.when(
      idle: () {
        if (idleWidget == null) {
          return Container();
        }
        return idleWidget();
      },
      loading: () {
        return loadingWidget();
      },
      data: (S data) {
        return dataWidget(data, false);
      },
      error: (ResultError resultError) {
        return errorWidget(resultError);
      },
      unNotifiedError: (S data, ResultError resultError) {
        return dataWidget(data, false);
      },
      nextPageLoading: (S data) {
        return dataWidget(data, true);
      },
    );
  }
}
