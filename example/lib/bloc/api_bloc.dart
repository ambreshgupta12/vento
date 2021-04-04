import 'package:example/model/movie_response.dart';
import 'package:example/repo/api_repository.dart';
import 'package:vento/vento.dart';

class MovieBloc extends VentoBloc<MovieResponse> {
  ApiRepository apiRepository = ApiRepository();

  getMovies() {
    getData(apiRepository.getMovie());
  }
}
