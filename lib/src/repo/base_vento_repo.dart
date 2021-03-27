import 'package:vento/src/network_state/error/result_error.dart';
import 'package:vento/src/network_state/network_state.dart';

typedef ResultErrorChanged<T> = ResultError Function(T value);

class BaseVentoRepo {
  Future<Result<T>> getResult<T>(
      Future<T> response, ResultErrorChanged errorProcess) async {
    try {
      return Result.success(data: await response);
    } catch (e) {
      print(e);
      return Result.failure(error: errorProcess(e));
    }
  }
}
