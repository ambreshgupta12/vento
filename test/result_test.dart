import 'package:flutter_test/flutter_test.dart';
import 'package:vento/vento.dart';

void main() {
  test('Test for Result class for failure', () {
    final result = Result<String>.failure(error: ResultError(0, "Test one"));

    result.when(
      success: (data) {
        expect(data, "Hello");
      },
      failure: (error) {
        expect(error.resultErrorCode, 0);
      },
    );
  });

  test('Test for Result class for Success', () {
    final result = Result<String>.success(data: "Hello");

    result.when(
      success: (data) {
        expect(data, "Hello");
      },
      failure: (error) {
        expect(error.resultErrorCode, 0);
      },
    );
  });
}
