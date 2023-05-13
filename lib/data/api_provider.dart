import 'dart:convert';
import 'package:http/http.dart' show Client, Response;
import 'package:acara_35/model/popular_movies.dart';

class ApiProvider {
  String apiKey = '';
  String baseUrl = 'https://api.themoviedb.org/3';

  Client client = Client();

  Future<PopularMovies> getPopularMovies() async {
    // string url = '$baseUrl/movie/populer?api_key=$apikey';
    // print(url);
    Response response=
    await client.get('$baseUrl/movie/populer?api_key=$apiKey');

    if(response.statusCode == 200){
      return PopularMovies.fromJson(jsonDecode(response.body));
      
    }else{
      throw Exception(response.statusCode);
    }
  }
}