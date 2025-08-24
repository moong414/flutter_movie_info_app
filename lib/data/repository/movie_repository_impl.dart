import 'package:flutter_movie_info_app/domain/entity/movie.dart';
import 'package:flutter_movie_info_app/domain/entity/movie_detail.dart';
import 'package:flutter_movie_info_app/domain/repository/movie_repository.dart';

class MovieRepositoryImpl implements MovieRepository{
  @override
  Future<MovieDetail?> fetchMovieDetail(int id) {
    // TODO: implement fetchMovieDetail
    throw UnimplementedError();
  }

  @override
  Future<List<Movie>?> fetchNowPlayingMovies() {
    // TODO: implement fetchNowPlayingMovies
    throw UnimplementedError();
  }

  @override
  Future<List<Movie>?> fetchPopularMovies() {
    // TODO: implement fetchPopularMovies
    throw UnimplementedError();
  }

  @override
  Future<List<Movie>?> fetchTopRatedMovies() {
    // TODO: implement fetchTopRatedMovies
    throw UnimplementedError();
  }

  @override
  Future<List<Movie>?> fetchUpcomingMovies() {
    // TODO: implement fetchUpcomingMovies
    throw UnimplementedError();
  }
}