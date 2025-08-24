// test/movie_data_source_test.dart
import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_movie_info_app/data/data_source/movie_data_source_impl.dart';
import 'package:flutter_movie_info_app/data/dto/movie_detail_dto.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  setUpAll(() async {
    final file = File('.env');
    if (await file.exists()) {
      final content = await file.readAsString();
      dotenv.testLoad(fileInput: content);
    } else {
      dotenv.testLoad(fileInput: 'ACCESS_TOKEN=dummy_token');
    }
  });

  test('movie data source test', () async {
    final ds = MovieDataSourceImpl();
    Future<MovieDetailDto?> result = ds.fetchMovieDetail(278);

    expect(result, isNotNull);
  });
}
