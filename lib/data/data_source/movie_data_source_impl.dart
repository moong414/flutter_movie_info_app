import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_movie_info_app/data/data_source/movie_data_source.dart';
import 'package:flutter_movie_info_app/data/dto/movie_detail_dto.dart';
import 'package:flutter_movie_info_app/data/dto/movie_response_dto.dart';
import 'package:http/http.dart';

class MovieDataSourceImpl implements MovieDataSource {
  final String movieUrl = 'https://api.themoviedb.org/3/movie/';
  final String accessToken = dotenv.env['ACCESS_TOKEN'] ?? '';

  @override
  Future<MovieDetailDto?> fetchMovieDetail(int id) async {
    try {
      Client client = Client();
      Response result = await client.get(
        Uri.parse('$movieUrl$id?language=ko-KR&page=1'),
        headers: {'Authorization': 'Bearer $accessToken'},
      );
      // GET 요청 성공 시 응답코드 200을 반환
      if (result.statusCode == 200) {
        final Map<String, dynamic> map = jsonDecode(result.body);
        return MovieDetailDto.fromJson(map);
      } else {
        print('요청실패! ${result.statusCode}');
      }
    } catch (e) {
      print('에러: $e');
      return null;
    }
  }

  @override
  Future<MovieResponseDto?> fetchNowPlayingMovies() async {
    try {
      Client client = Client();
      Response result = await client.get(
        Uri.parse('${movieUrl}now_playing?language=ko-KR&page=1'),
        headers: {'Authorization': 'Bearer $accessToken'},
      );
      // GET 요청 성공 시 응답코드 200을 반환
      if (result.statusCode == 200) {
        final Map<String, dynamic> map = jsonDecode(result.body);
        return MovieResponseDto.fromJson(map);
      } else {
        print('요청실패! ${result.statusCode}');
      }
    } catch (e) {
      print('에러: $e');
      return null;
    }
  }

  @override
  Future<MovieResponseDto?> fetchPopularMovies() async {
    try {
      Client client = Client();
      Response result = await client.get(
        Uri.parse('${movieUrl}popular?language=ko-KR&page=1'),
        headers: {'Authorization': 'Bearer $accessToken'},
      );
      // GET 요청 성공 시 응답코드 200을 반환
      if (result.statusCode == 200) {
        final Map<String, dynamic> map = jsonDecode(result.body);
        return MovieResponseDto.fromJson(map);
      } else {
        print('요청실패! ${result.statusCode}');
      }
    } catch (e) {
      print('에러: $e');
      return null;
    }
  }

  @override
  Future<MovieResponseDto?> fetchTopRatedMovies() async {
    try {
      Client client = Client();
      Response result = await client.get(
        Uri.parse('${movieUrl}top_rated?language=ko-KR&page=1'),
        headers: {'Authorization': 'Bearer $accessToken'},
      );
      // GET 요청 성공 시 응답코드 200을 반환
      if (result.statusCode == 200) {
        final Map<String, dynamic> map = jsonDecode(result.body);
        return MovieResponseDto.fromJson(map);
      } else {
        print('요청실패! ${result.statusCode}');
      }
    } catch (e) {
      print('에러: $e');
      return null;
    }
  }

  @override
  Future<MovieResponseDto?> fetchUpcomingMovies() async {
    try {
      Client client = Client();
      Response result = await client.get(
        Uri.parse('${movieUrl}upcoming?language=ko-KR&page=1'),
        headers: {'Authorization': 'Bearer $accessToken'},
      );
      // GET 요청 성공 시 응답코드 200을 반환
      if (result.statusCode == 200) {
        final Map<String, dynamic> map = jsonDecode(result.body);
        return MovieResponseDto.fromJson(map);
      } else {
        print('요청실패! ${result.statusCode}');
      }
    } catch (e) {
      print('에러: $e');
      return null;
    }
  }
}
