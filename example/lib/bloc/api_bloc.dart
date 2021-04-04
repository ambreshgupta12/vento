import 'package:example/model/movie_response.dart';
import 'package:example/repo/api_repository.dart';
import 'package:vento/vento.dart';

class MovieBloc extends VentoBloc<MovieResponse> {
  ApiRepository apiRepository = ApiRepository();

  getMovies() {
    /*
    getData(
      apiRepository.getMovie(),
      onLoading: () {},
      onError: (value) {},
      isUnNotifiedError: false,
      onData: (value) {},
      isUpdate: false,
    );
     */
    getData(
      apiRepository.getMovie(),
    );
  }

  updateMoviesInBackground() {
    /*
    * getData(
      apiRepository.getMovie(),
      onLoading: () {},
      onError: (value) {},
      isUnNotifiedError: false,
      onData: (value) {},
      isUpdate: true,
    );
    */
    getData(
      apiRepository.getMovie(),
      isUpdate: true,
    );
  }
}
