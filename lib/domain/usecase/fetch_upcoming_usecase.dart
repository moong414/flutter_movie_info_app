import 'package:flutter_movie_info_app/data/data_source/movie_data_source.dart';
import 'package:flutter_movie_info_app/data/dto/movie_response_dto.dart';

class FetchUpcomingUsecase {
  FetchUpcomingUsecase(this._movieDataSource);
  final MovieDataSource _movieDataSource;

  Future<MovieResponseDto?> execute() async{
    return await _movieDataSource.fetchUpcomingMovies();
  }
}