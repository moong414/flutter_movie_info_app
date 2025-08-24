// {
//   "adult": false,
//   "backdrop_path": "/pNjh59JSxChQktamG3LMp9ZoQzp.jpg",
//   "belongs_to_collection": null,
//   "budget": 25000000,
//   "genres": [
//     {
//       "id": 18,
//       "name": "드라마"
//     },
//     {
//       "id": 80,
//       "name": "범죄"
//     }
//   ],
//   "homepage": "",
//   "id": 278,
//   "imdb_id": "tt0111161",
//   "origin_country": [
//     "US"
//   ],
//   "original_language": "en",
//   "original_title": "The Shawshank Redemption",
//   "overview": "촉망받는 은행 간부 앤디 듀프레인은 아내와 그녀의 정부를 살해했다는 누명을 쓴다. 주변의 증언과 살해 현장의 그럴듯한 증거들로 그는 종신형을 선고받고 악질범들만 수용한다는 지옥같은 교도소 쇼생크로 향한다. 인간 말종 쓰레기들만 모인 그곳에서 그는 이루 말할 수 없는 억압과 짐승보다 못한 취급을 당한다. 그러던 어느 날, 간수의 세금을 면제받게 해 준 덕분에 그는 일약 교도소의 비공식 회계사로 일하게 된다. 그 와중에 교도소 소장은 죄수들을 이리저리 부리면서 검은 돈을 긁어 모으고 앤디는 이 돈을 세탁하여 불려주면서 그의 돈을 관리하는데...",
//   "popularity": 25.9745,
//   "poster_path": "/qV9BQZdiM8foEzDz0Ag5hGWE5qM.jpg",
//   "production_companies": [
//     {
//       "id": 97,
//       "logo_path": "/7znWcbDd4PcJzJUlJxYqAlPPykp.png",
//       "name": "Castle Rock Entertainment",
//       "origin_country": "US"
//     }
//   ],
//   "production_countries": [
//     {
//       "iso_3166_1": "US",
//       "name": "United States of America"
//     }
//   ],
//   "release_date": "1994-09-23",
//   "revenue": 28341469,
//   "runtime": 142,
//   "spoken_languages": [
//     {
//       "english_name": "English",
//       "iso_639_1": "en",
//       "name": "English"
//     }
//   ],
//   "status": "Released",
//   "tagline": "두려움은 너를 죄수로 가두고 희망은 너를 자유롭게 하리라",
//   "title": "쇼생크 탈출",
//   "video": false,
//   "vote_average": 8.7,
//   "vote_count": 28738
// }

class MovieDetailDto {
    bool adult;
    String backdropPath;
    BelongsToCollection belongsToCollection;
    int budget;
    List<Genre> genres;
    String homepage;
    int id;
    String imdbId;
    List<String> originCountry;
    String originalLanguage;
    String originalTitle;
    String overview;
    double popularity;
    String posterPath;
    List<ProductionCompany> productionCompanies;
    List<ProductionCountry> productionCountries;
    DateTime releaseDate;
    int revenue;
    int runtime;
    List<SpokenLanguage> spokenLanguages;
    String status;
    String tagline;
    String title;
    bool video;
    double voteAverage;
    int voteCount;

    MovieDetailDto({
        required this.adult,
        required this.backdropPath,
        required this.belongsToCollection,
        required this.budget,
        required this.genres,
        required this.homepage,
        required this.id,
        required this.imdbId,
        required this.originCountry,
        required this.originalLanguage,
        required this.originalTitle,
        required this.overview,
        required this.popularity,
        required this.posterPath,
        required this.productionCompanies,
        required this.productionCountries,
        required this.releaseDate,
        required this.revenue,
        required this.runtime,
        required this.spokenLanguages,
        required this.status,
        required this.tagline,
        required this.title,
        required this.video,
        required this.voteAverage,
        required this.voteCount,
    });


    MovieDetailDto.fromJson(Map<String, dynamic> map) : this(
      adult : map['adult'],
      backdropPath : map['backdrop_path'],
      belongsToCollection : map['belongs_to_collection'],
      budget : map['budget'],
      genres : List<Genre>.from(map['genres']),
      homepage : map['homepage'],
      id : map['id'],
      imdbId : map['imdb_id'],
      originCountry : List.from(map['origin_country']),
      originalLanguage : map['original_language'],
      originalTitle : map['original_title'],
      overview : map['overview'],
      popularity : map['popularity'],
      posterPath : map['poster_path'],
      productionCompanies : List<ProductionCompany>.from(map['production_companies']),
      productionCountries : List<ProductionCountry>.from(map['production_countries']),
      releaseDate : map['release_date'],
      revenue : map['revenue'],
      runtime : map['runtime'],
      spokenLanguages : List<SpokenLanguage>.from(map['spoken_languages']),
      status : map['status'],
      tagline : map['tagline'],
      title : map['title'],
      video : map['video'],
      voteAverage : map['vote_average'],
      voteCount : map['voteCount'],
    );


}

class BelongsToCollection {
    int id;
    String name;
    String posterPath;
    String backdropPath;

    BelongsToCollection({
        required this.id,
        required this.name,
        required this.posterPath,
        required this.backdropPath,
    });

}

class Genre {
    int id;
    String name;

    Genre({
        required this.id,
        required this.name,
    });

}

class ProductionCompany {
    int id;
    String logoPath;
    String name;
    String originCountry;

    ProductionCompany({
        required this.id,
        required this.logoPath,
        required this.name,
        required this.originCountry,
    });

}

class ProductionCountry {
    String iso31661;
    String name;

    ProductionCountry({
        required this.iso31661,
        required this.name,
    });

}

class SpokenLanguage {
    String englishName;
    String iso6391;
    String name;

    SpokenLanguage({
        required this.englishName,
        required this.iso6391,
        required this.name,
    });

}


