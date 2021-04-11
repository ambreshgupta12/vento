import 'package:vento/src/network_state/error/result_error.dart';
import 'package:vento/src/network_state/network_state.dart';

///[ResultErrorChanged] is a callback function
///to get the error and send [ResultError]
typedef ResultErrorChanged<T> = ResultError Function(T error);

///
/// class ApiRepository extends BaseVentoRepo {
///
///   Future<Result<String>> getApiData() {
///     return getResult(Future<String>.value("Hello"), (value) {
///       return ResultError(0, "This is a error");
///     });
///   }
///
/// }
class BaseVentoRepo {
  ///[getResult] will take the [Future] response and return [Result]
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
