class PopularMobies{
  late int page;
  late int totalResults;
  late int totalPages;
  late List<Results> Results;

  PopularMovies(
    {required this.page,
    required this.totalResults,
    required this.totalPages,
    required this.Results});

  PopularMovies.fromJson(Map<String, dynamic> json) {
    page = json['page'];
    totalResults = json['total_results'];
    totalPages = json['total_pages'];
    if (json['results'] != null) {
      Results = <Results> [];
      json['results'].forEach((v) {
        Results.add(new Results.fromJson(v));
      });
    }
  }

  Map <String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map <String, dynamic>();
    data['page'] = this.page;
    data['total_results'] = this.totalResults;
    data['total_pages'] = this.totalPages;
    if (this.Results != null) {
      data['results'] = this.Results.map((v) =>v.toJson()).toList();
    }
    return data;
  }  
}

class Results {
  late double popularity;
  late int voteCount;
  late bool video;
  late String posterpath;
  late int id;
  late bool adult;
  late String backdroppath;
  late String originallanguage;
  late String originalTitle;
  late List<int> genrelds;
  late String title;
  late double voteAverage;
  late String overview;
  late String releaseDate; 

Results(
    {required this.popularity,
    required this.voteCount,
    required this.video,
    required this.posterpath,
    required this.id,
    required this.adult,
    required this.backdroppath,
    required this.originallanguage,
    required this.originalTitle,
    required this.genrelds,
    required this. title,
    required this.voteAverage,
    required this.overview,
    required this.releaseDate});

Results. fromJson(Map<String, dynamic> json) {
popularity = json[ 'popularity'];
voteCount = json[ 'vote count'];
video = json[ 'video' ];
posterpath = json['poster path'];
id = json['id'];
adult = json['adult'];
backdroppath = json['backdrop_path'];
originallanguage = json['original language'];
originalTitle = json['original title'];
genrelds = json['genre_ids'].cast<int>();
title = json['title'];
voteAverage = json['vote_average'].toDouble();
overview = json['overview'];
releaseDate = json['release_date'];
}

Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['popularity'] = this.popularity;
    data['vote_count'] = this.voteCount;
    data['video'] = this.video;
    data['poster_path'] = this.posterpath;
    data['id'] = this.id;
    data['adult'] = this.adult;
    data['backdrop_path'] = this.backdroppath;
    data['original _language'] = this.originallanguage;
    data['original _title'] = this.originalTitle;
    data['genre_ids'] = this.genrelds;
    data['title'] = this.title;
    data['vote_average'] = this.voteAverage;
    data['overview'] = this.overview;
    data['release date'] = this.releaseDate;
    return data;
  }
}