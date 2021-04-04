import 'package:dio/dio.dart' hide Headers;
import 'package:example/model/movie_response.dart';
import 'package:retrofit/http.dart';

part 'api_client.g.dart';

@RestApi()
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET("movie/popular")
  Future<MovieResponse> movies(
    @Query("api_key") String apiKey,
  );
}
