import 'package:example/apirepo.dart';
import 'package:vento/vento.dart';

class ApiBloc extends VentoBloc<String> {
  ApiRepository apiRepository = ApiRepository();

  getApi() {
    getApiData(apiRepository.getApiData());
  }
}
