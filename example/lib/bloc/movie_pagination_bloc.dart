import 'package:example/model/movie_response.dart';
import 'package:example/repo/api_repository.dart';
import 'package:vento/vento.dart';

class MoviePaginationBloc extends VentoBloc<MovieResponse> {
  ApiRepository apiRepository = ApiRepository();
  int page = 0;

  getMovies() {
    getData(
      apiRepository.getMovie(),
      isUpdate: false,
      onData: (value) {},
      isUnNotifiedError: false,
      onError: (value) {},
      onLoading: () {},
    );
  }

  getNextMovies() async {
/*
*     getSpecificApiData<MovieResponse>(
      await apiRepository.getMovie(),
      emitValue: (MovieResponse value) {
        ---Data Manipulation
        return data;
      },
      isUnNotifiedError: true,
      onError: (value) {},
      onData: (value) {},
      onLoading: () {},
      isUpdate: false,
    );

  */
    var data = (state as DataState<MovieResponse>).data;
    getSpecificApiData<MovieResponse>(
      await apiRepository.getMovie(),
      emitValue: (MovieResponse value) {
        data.results.addAll(value.results);
        data.page = value.page;
        data.totalPages = value.totalPages;
        data.totalResults = data.totalResults + value.totalResults;
        return data;
      },
      isUnNotifiedError: true,
    );
  }
}
