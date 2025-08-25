import 'package:flutter_movie_info_app/data/dto/movie_detail_dto.dart';
import 'package:flutter_movie_info_app/presentation/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DetailPageViewModel extends Notifier<MovieDetailDto?>{
  @override
  MovieDetailDto? build() {
    return null;
  }
  
  Future<void> fetchMovieDetail(int id) async{
    state = await ref.read(fetchMovieDetailUsecaseProvider).execute(id);
  }

  
}

final detailPageViewModelProvider = NotifierProvider<DetailPageViewModel, MovieDetailDto?>(
    () => DetailPageViewModel(),
  );