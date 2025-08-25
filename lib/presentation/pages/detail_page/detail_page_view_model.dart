import 'package:flutter_movie_info_app/data/dto/movie_detail_dto.dart';
import 'package:flutter_movie_info_app/presentation/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DetailPageViewModel extends Notifier<MovieDetailDto?>{
  
  @override
  MovieDetailDto? build() {
    return null;
  }
  
  Future<void> fetchMovieDetail(int id) async{
    final fetchMovieDetailUsecase = ref.read(fetchMovieDetailUsecaseProvider);
    final result = await fetchMovieDetailUsecase.execute(id);
    state = result;
  }

}

final detailPageViewModelProvider = NotifierProvider<DetailPageViewModel, MovieDetailDto?>(
    () => DetailPageViewModel(),
  );