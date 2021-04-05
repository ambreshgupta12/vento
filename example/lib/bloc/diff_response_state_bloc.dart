import 'package:example/model/movie_response.dart';
import 'package:example/repo/api_repository.dart';
import 'package:vento/vento.dart';

class MovieBlocWithDiffResState extends VentoBloc<List<Movie>> {
  ApiRepository apiRepository = ApiRepository();

  getMovies() async {
/*
*  getSpecificApiData<MovieResponse>(
      await apiRepository.getMovie(),
      emitValue: (value) {
        return value?.results ?? [];
      },
      onData: (value) {},
      isUnNotifiedError: false,
      onError: (value) {},
      onLoading: () {},
      isUpdate: false,
    );
* */
    getSpecificApiData<MovieResponse>(
      apiRepository.getMovie(),
      emitValue: (value) {
        return value?.results ?? [];
      },
    );
  }
}
