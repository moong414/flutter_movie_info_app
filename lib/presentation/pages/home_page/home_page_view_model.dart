import 'package:flutter_movie_info_app/data/dto/movie_response_dto.dart';
import 'package:flutter_movie_info_app/presentation/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePageViewModel extends Notifier<MovieResponseDto?>{
  @override
  MovieResponseDto? build() {
    return null;
  }
  
  Future<void> fetchNowPlayingMovies() async{
    state = await ref.read(fetetchNowPlayingUsecaseProvider).execute();
  }

  Future<void> fetchPopularMovies() async{
    state = await ref.read(fetchPopularUsecaseProvider).execute();
  }

  Future<void> fetchTopRateMovies() async{
    state = await ref.read(fetchTopRateUsecaseProvider).execute();
  }

  Future<void> fetchUpcomingMovies() async{
    state = await ref.read(fetchUpcomingUsecaseProvider).execute();
  }

}

final homePageViewModelProvider = NotifierProvider<HomePageViewModel, MovieResponseDto?>(
    () => HomePageViewModel(),
  );