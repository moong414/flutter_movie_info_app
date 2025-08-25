// {
//   "dates": {
//     "maximum": "2025-08-27",
//     "minimum": "2025-07-16"
//   },
//   "page": 1,
//   "results": [
//     {
//       "adult": false,
//       "backdrop_path": "/iZLqwEwUViJdSkGVjePGhxYzbDb.jpg",
//       "genre_ids": [
//         878,
//         53
//       ],
//       "id": 755898,
//       "original_language": "en",
//       "original_title": "War of the Worlds",
//       "overview": "전설적인 동명 소설을 새롭게 재해석한 이번 작품은 거대한 침공의 서막을 알린다. 에바 롱고리아와 전설적인 래퍼이자 배우 아이스 큐브, 그리고 마이클 오닐과 이만 벤슨이 합류해, 기술과 감시, 사생활이라는 현대적 주제를 아우르는 짜릿한 우주급 모험을 선보인다.",
//       "popularity": 1181.4284,
//       "poster_path": "/yvirUYrva23IudARHn3mMGVxWqM.jpg",
//       "release_date": "2025-07-29",
//       "title": "우주전쟁",
//       "video": false,
//       "vote_average": 4.259,
//       "vote_count": 402
//     },

class MovieResponseDto {
  Dates? dates;
  int page;
  List<Result> results;
  int totalPages;
  int totalResults;

  MovieResponseDto({
    required this.dates,
    required this.page,
    required this.results,
    required this.totalPages,
    required this.totalResults,
  });

  MovieResponseDto.fromJson(Map<String, dynamic> map)
    : this(
        dates: map['dates'] != null ? Dates.fromJson(map['dates'] as Map<String, dynamic>) : null,
        page: map['page'],
        results: (map['results'] as List).map((e)=>Result.fromJson(e as Map<String, dynamic>)).toList(),
        totalPages: map['total_pages'],
        totalResults: map['total_results'],
      );
}

class Dates {
  DateTime maximum;
  DateTime minimum;

  Dates({required this.maximum, required this.minimum});

  Dates.fromJson(Map<String, dynamic> map)
    : this(maximum: map['maximum'], minimum: map['minimum']);
}

class Result {
  bool adult;
  String backdropPath;
  List<int> genreIds;
  int id;
  String originalLanguage;
  String originalTitle;
  String overview;
  double popularity;
  String posterPath;
  DateTime releaseDate;
  String title;
  bool video;
  double voteAverage;
  int voteCount;

  Result({
    required this.adult,
    required this.backdropPath,
    required this.genreIds,
    required this.id,
    required this.originalLanguage,
    required this.originalTitle,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.releaseDate,
    required this.title,
    required this.video,
    required this.voteAverage,
    required this.voteCount,
  });

  Result.fromJson(Map<String, dynamic> map): this(
    adult: map['adult'],
    backdropPath: map['backdrop_path'],
    genreIds: List<int>.from(map['genre_ids']),
    id: map['id'],
    originalLanguage: map['original_language'],
    originalTitle: map['original_title'],
    overview: map['overview'],
    popularity: map['popularity'],
    posterPath: map['poster_path'],
    releaseDate: DateTime.parse(map['release_date'] as String),
    title: map['title'],
    video: map['video'],
    voteAverage: map['vote_average'],
    voteCount: map['vote_count'],
  );

  
}
// "results": [
//     {
//       "adult": false,
//       "backdrop_path": "/iZLqwEwUViJdSkGVjePGhxYzbDb.jpg",
//       "genre_ids": [
//         878,
//         53
//       ],
//       "id": 755898,
//       "original_language": "en",
//       "original_title": "War of the Worlds",
//       "overview": "전설적인 동명 소설을 새롭게 재해석한 이번 작품은 거대한 침공의 서막을 알린다. 에바 롱고리아와 전설적인 래퍼이자 배우 아이스 큐브, 그리고 마이클 오닐과 이만 벤슨이 합류해, 기술과 감시, 사생활이라는 현대적 주제를 아우르는 짜릿한 우주급 모험을 선보인다.",
//       "popularity": 1181.4284,
//       "poster_path": "/yvirUYrva23IudARHn3mMGVxWqM.jpg",
//       "release_date": "2025-07-29",
//       "title": "우주전쟁",
//       "video": false,
//       "vote_average": 4.259,
//       "vote_count": 402
//     },


