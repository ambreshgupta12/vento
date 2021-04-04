import 'package:dio/dio.dart';
import 'package:example/model/movie_response.dart';
import 'package:example/network/api_client.dart';
import 'package:vento/vento.dart';

class ApiRepository extends BaseVentoRepo {
  ApiClient dioClient;
  final String _apiKey = "78b9f63937763a206bff26c070b94158";
  String _baseUrl = "http://api.themoviedb.org/3/";

  ApiRepository() {
    var dio = Dio();

    dioClient = ApiClient(
      dio,
      baseUrl: _baseUrl,
    );
  }

  Future<Result<MovieResponse>> getMovie() {
    return getResult(dioClient.movies(_apiKey), (value) {
      return ResultError(0, value.toString());
    });
  }
}
