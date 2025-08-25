import 'package:flutter_movie_info_app/data/data_source/movie_data_source_impl.dart';
import 'package:flutter_movie_info_app/domain/usecase/fetch_movie_detail_usecase.dart';
import 'package:flutter_movie_info_app/domain/usecase/fetch_popular_usecase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final _movieDataSourceProvider = Provider((ref) {
  return MovieDataSourceImpl();
},);

final fetchPopularUsecaseProvider = Provider((ref) {
  return FetchPopularUsecase(ref.read(_movieDataSourceProvider));
},);

final fetchMovieDetailUsecaseProvider = Provider((ref) {
  return FetchMovieDetailUsecase(ref.read(_movieDataSourceProvider));
},);