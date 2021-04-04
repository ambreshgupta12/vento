import 'package:vento/vento.dart';

class ApiRepository extends BaseVentoRepo {
  Future<Result<String>> getApiData() {
    return getResult(Future<String>.value("Hello"), (value) {
      return ResultError(0, "This is a error");
    });
  }
}
