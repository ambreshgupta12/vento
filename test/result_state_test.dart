import 'package:flutter_test/flutter_test.dart';
import 'package:vento/vento.dart';

void main() {
  test('Test for Result State', () {
    ResultState<String> resultState = ResultState.idle();
    checkResultState(resultState);
    resultState = ResultState<String>.data(data: "Hello");
    checkResultState(resultState);
    resultState =
        ResultState<String>.error(resultError: ResultError(0, "Error"));
    checkResultState(resultState);
    resultState = ResultState<String>.nextPageLoading(data: "Hi");
    checkResultState(resultState);
    resultState = ResultState<String>.unNotifiedError(
        data: "Hello", resultError: ResultError(0, "Error"));
    checkResultState(resultState);
  });
}

void checkResultState(ResultState<String> resultState) {
  resultState.when(
    idle: () {
      expect(IdleState(), IdleState());
    },
    loading: () {},
    data: (data) {
      expect(data, "Hello");
      expect(resultState is DataState<String>, resultState.isDataState);
    },
    error: (resultError) {
      expect(resultError.errorMessage, "Error");
      expect(resultError.errorCode, 0);
      expect(resultState is ErrorState<String>, resultState.isErrorState);
    },
    nextPageLoading: (data) {
      expect(data, "Hi");
      expect(resultState is NextLoadingState<String>,
          resultState.isDataState);
    },
    unNotifiedError: (data, resultError) {
      expect(data, "Hello");
      expect(resultError.errorMessage, "Error");
      expect(resultError.errorCode, 0);
      expect(resultState is UnNotifiedErrorState<String>,
          resultState.isErrorState);
    },
  );
}
