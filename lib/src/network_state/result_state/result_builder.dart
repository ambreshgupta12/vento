import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vento/src/network_state/error/result_error.dart';
import 'package:vento/src/network_state/result_state/result_state.dart';

///[ResultErrorWidget] is a callback function
///which returns Error [Widget] and take [ResultError] parameter
typedef ResultErrorWidget = Widget Function(ResultError error);

///[ResultErrorWidget] is a callback function
///which returns loading [Widget]
typedef ResultLoadingWidget = Widget Function();

///[ResultErrorWidget] is a callback function
///which returns loading [Widget]
typedef ReturnWidget = Widget Function();

///[ResultDataWidget] is a callback function
///which returns result [Widget]
typedef ResultDataWidget<T> = Widget Function(T value, bool isNextLoading);

///[StateWidgetBuilder] is a callback function
///which returns [Widget]
typedef StateWidgetBuilder<S> = Widget Function(
    BuildContext, ResultState<S> state);

///[Create] callback function will
typedef Create<T> = T Function(BuildContext context);

///VentoResultBuilder is [ResultState] Builder class
///which needs state and simplify the data accessibility
class VentoResultBuilder<T> extends StatelessWidget {
  ///
  const VentoResultBuilder({
    @required this.state,
    @required this.dataWidget,
    @required this.loadingWidget,
    @required this.errorWidget,
    Key key,
    this.idleWidget,
    this.showLoadingInitially = true,
  })  : assert(dataWidget != null, '$dataWidget cannot be null'),
        assert(loadingWidget != null, '$loadingWidget cannot be null'),
        assert(errorWidget != null, '$errorWidget cannot be null'),
        super(key: key);

  final ResultState<T> state;
  final ResultDataWidget<T> dataWidget;
  final ResultLoadingWidget loadingWidget;
  final ReturnWidget idleWidget;
  final ResultErrorWidget errorWidget;
  final bool showLoadingInitially;

  @override
  Widget build(BuildContext context) => state.when(
        idle: () {
          if (idleWidget == null) {
            return Container();
          }
          return idleWidget();
        },
        loading: loadingWidget,
        data: (T value) => dataWidget(value, false),
        error: errorWidget,
        unNotifiedError: (T data, ResultError resultError) =>
            dataWidget(data, false),
        nextPageLoading: (T data) => dataWidget(data, true),
      );

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty<ResultState<T>>('state', state))
      ..add(
          ObjectFlagProperty<ResultDataWidget<T>>.has('dataWidget', dataWidget))
      ..add(ObjectFlagProperty<ResultLoadingWidget>.has(
          'loadingWidget', loadingWidget))
      ..add(ObjectFlagProperty<ReturnWidget>.has('idleWidget', idleWidget))
      ..add(
          ObjectFlagProperty<ResultErrorWidget>.has('errorWidget', errorWidget))
      ..add(DiagnosticsProperty<bool>(
          'showLoadingInitially', showLoadingInitially));
  }
}

class VentoBlocBuilder<T extends Cubit<ResultState<S>>, S>
    extends StatelessWidget {
  const VentoBlocBuilder(
      {@required this.dataWidget,
      @required this.loadingWidget,
      @required this.errorWidget,
      Key key,
      this.bloc,
      this.idleWidget,
      this.showLoadingInitially = true,
      this.listener})
      : assert(dataWidget != null, '$dataWidget cannot be null'),
        assert(loadingWidget != null, '$loadingWidget cannot be null'),
        assert(errorWidget != null, '$errorWidget cannot be null'),
        super(key: key);

  final T bloc;
  final BlocWidgetListener<ResultState<S>> listener;
  final ResultDataWidget<S> dataWidget;
  final ResultLoadingWidget loadingWidget;
  final ReturnWidget idleWidget;
  final ResultErrorWidget errorWidget;
  final bool showLoadingInitially;

  @override
  Widget build(BuildContext context) => BlocConsumer<T, ResultState<S>>(
        bloc: bloc,
        listener: listener ?? (context, state) {},
        builder: (context, state) => state.when(
          idle: () {
            if (idleWidget == null) {
              return Container();
            }
            return idleWidget();
          },
          loading: loadingWidget,
          data: (S data) => dataWidget(data, false),
          error: errorWidget,
          unNotifiedError: (S data, ResultError resultError) =>
              dataWidget(data, false),
          nextPageLoading: (S data) => dataWidget(data, true),
        ),
      );

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty<T>('bloc', bloc))
      ..add(ObjectFlagProperty<BlocWidgetListener<ResultState<S>>>.has(
          'listener', listener))
      ..add(
          ObjectFlagProperty<ResultDataWidget<S>>.has('dataWidget', dataWidget))
      ..add(ObjectFlagProperty<ResultLoadingWidget>.has(
          'loadingWidget', loadingWidget))
      ..add(ObjectFlagProperty<ReturnWidget>.has('idleWidget', idleWidget))
      ..add(
          ObjectFlagProperty<ResultErrorWidget>.has('errorWidget', errorWidget))
      ..add(DiagnosticsProperty<bool>(
          'showLoadingInitially', showLoadingInitially));
  }
}

class VentoStateBuilder<T extends Cubit<ResultState<S>>, S>
    extends StatelessWidget {
  const VentoStateBuilder({Key key, this.bloc, this.builder, this.listener})
      : super(key: key);

  final T bloc;
  final BlocWidgetListener<ResultState<S>> listener;
  final StateWidgetBuilder<S> builder;

  @override
  Widget build(BuildContext context) => BlocConsumer<T, ResultState<S>>(
        bloc: bloc,
        listener: listener ?? (context, state) {},
        builder: builder,
      );

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(ObjectFlagProperty<StateWidgetBuilder<S>>.has(
        'builder',
        builder,
      ))
      ..add(ObjectFlagProperty<BlocWidgetListener<ResultState<S>>>.has(
        'listener',
        listener,
      ))
      ..add(DiagnosticsProperty<T>('bloc', bloc));
  }
}

class VentoProvider<T extends Cubit<ResultState>> extends StatelessWidget {
  const VentoProvider({Key key, this.create, this.child}) : super(key: key);

  final Create<T> create;
  final Widget child;

  @override
  Widget build(BuildContext context) => BlocProvider<T>(
        create: create,
        child: child,
      );

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(ObjectFlagProperty<Create<T>>.has('create', create))
      ..add(DiagnosticsProperty<Widget>('child', child));
  }
}
