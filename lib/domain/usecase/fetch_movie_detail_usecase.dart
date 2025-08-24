import 'package:flutter_movie_info_app/data/data_source/movie_data_source.dart';
import 'package:flutter_movie_info_app/data/dto/movie_detail_dto.dart';

class FetchMovieDetailUsecase {
  FetchMovieDetailUsecase(this._movieDataSource);
  final MovieDataSource _movieDataSource;

  Future<MovieDetailDto?> execute(int id) async{
    return await _movieDataSource.fetchMovieDetail(id);
  }
}