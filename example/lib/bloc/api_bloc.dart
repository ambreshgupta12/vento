import 'package:example/model/movie_response.dart';
import 'package:vento/vento.dart';

import '../api_repository.dart';

class MovieBloc extends VentoBloc<MovieResponse> {
  ApiRepository apiRepository = ApiRepository();

  getMovies() {
    getData(apiRepository.getMovie());
  }
}
