import 'package:flutter_movie_info_app/data/dto/movie_response_dto.dart';
import 'package:flutter_movie_info_app/presentation/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePageViewModel extends Notifier<MovieResponseDto?>{
  @override
  MovieResponseDto? build() {
    // fetchPopularMovies();
    return null;
  }
  
  Future<MovieResponseDto?> fetchPopularMovies() async{
    state = await ref.read(fetchPopularUsecaseProvider).execute();
  }

  
}

final homePageViewModelProvider = NotifierProvider<HomePageViewModel, MovieResponseDto?>(
    () => HomePageViewModel(),
  );