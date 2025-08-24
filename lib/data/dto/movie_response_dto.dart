class MovieResponseDto {
    Dates dates;
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

    MovieResponseDto.fromJson(Map<String, dynamic> map) : this(
      dates: map['dates'],
      page: map['page'],
      results: List<Result>.from(map['results']),
      totalPages: map['total_pages'],
      totalResults: map['total_results']
    );

}

class Dates {
    DateTime maximum;
    DateTime minimum;

    Dates({
        required this.maximum,
        required this.minimum,
    });

}

class Result {
    bool adult;
    String backdropPath;
    List<int> genreIds;
    int id;
    OriginalLanguage originalLanguage;
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

}

enum OriginalLanguage {
    EN,
    JA,
    TH,
    ZH
}
