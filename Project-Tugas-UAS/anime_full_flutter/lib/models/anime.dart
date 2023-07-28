class Anime {
  int malId;
  String url;
  Map<String, Image>? images;
  Trailer? trailer;
  String title;
  String? titleEnglish;
  String? titleJapanese;
  String? type;
  int? episodes;
  String? status;
  String? rating;
  String? synopsis;
  String? season;
  int? year;

  Anime({
    required this.malId,
    required this.url,
    this.images,
    this.trailer,
    required this.title,
    this.titleEnglish,
    this.titleJapanese,
    this.type,
    this.episodes,
    this.rating,
    this.synopsis,
    this.status,
    this.season,
    this.year,
  });

  factory Anime.fromJson(Map<String, dynamic> json) {
    return Anime(
      malId: json['mal_id'],
      url: json['url'],
      images: (json["images"] != null)
          ? Map.from(json["images"]).map(
              (k, v) => MapEntry<String, Image>(k, Image.fromJson(v)),
            )
          : null,
      trailer:
          (json["trailer"] != null) ? Trailer.fromJson(json["trailer"]) : null,
      title: json['title'],
      titleEnglish: json['title_english'],
      titleJapanese: json['title_japanese'],
      type: json['type'],
      episodes: json['episodes'],
      rating: json['rating'],
      synopsis: json['synopsis'],
      status: json['status'],
      season: json['season'],
      year: json['year'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'mal_id': malId,
      'url': url,
      'images': images?.map((k, v) => MapEntry(k, v.toJson())),
      'trailer': trailer?.toJson(),
      'title': title,
      'title_english': titleEnglish,
      'title_japanese': titleJapanese,
      'type': type,
      'episodes': episodes,
      'rating': rating,
      'synopsis': synopsis,
      'status': status,
      'season': season,
      'year': year,
    };
  }
}

class Image {
  String? imageUrl;
  String? smallImageUrl;
  String? largeImageUrl;

  Image({
    this.imageUrl,
    this.smallImageUrl,
    this.largeImageUrl,
  });

  factory Image.fromJson(Map<String, dynamic> json) => Image(
        imageUrl: json["image_url"],
        smallImageUrl: json["small_image_url"],
        largeImageUrl: json["large_image_url"],
      );

  Map<String, dynamic> toJson() {
    return {
      'image_url': imageUrl,
      'small_image_url': smallImageUrl,
      'large_image_url': largeImageUrl,
    };
  }
}

class Trailer {
  String? youtubeId;
  String? url;
  String? embedUrl;

  Trailer({
    this.youtubeId,
    this.url,
    this.embedUrl,
  });

  factory Trailer.fromJson(Map<String, dynamic> json) => Trailer(
        youtubeId: json["youtube_id"],
        url: json["url"],
        embedUrl: json["embed_url"],
      );

  Map<String, dynamic> toJson() {
    return {
      'youtube_id': youtubeId,
      'url': url,
      'embed_url': embedUrl,
    };
  }
}

// class AnimeId {
//   int malId;
//   String url;
//   String title;
//   String titleEnglish;
//   String titleJapanese;
//   String type;
//   String source;
//   int episodes;
//   String status;
//   bool airing;
//   String duration;
//   String rating;
//   int score;
//   int scoredBy;
//   int rank;
//   int popularity;
//   int members;
//   int favorites;

//   AnimeId({
//     required this.malId,
//     required this.url,
//     required this.title,
//     required this.titleEnglish,
//     required this.titleJapanese,
//     required this.type,
//     required this.source,
//     required this.episodes,
//     required this.status,
//     required this.airing,
//     required this.duration,
//     required this.rating,
//     required this.score,
//     required this.scoredBy,
//     required this.rank,
//     required this.popularity,
//     required this.members,
//     required this.favorites,
//   });

//   factory AnimeId.fromJson(Map<String, dynamic> json) => AnimeId(
//         malId: json["mal_id"],
//         url: json["url"],
//         title: json["title"],
//         titleEnglish: json["title_english"],
//         titleJapanese: json["title_japanese"],
//         type: json["type"],
//         source: json["source"],
//         episodes: json["episodes"],
//         status: json["status"],
//         airing: json["airing"],
//         duration: json["duration"],
//         rating: json["rating"],
//         score: json["score"],
//         scoredBy: json["scored_by"],
//         rank: json["rank"],
//         popularity: json["popularity"],
//         members: json["members"],
//         favorites: json["favorites"],
//       );
// }

// class AnimeId {
//   int malId;
//   String url;
//   Map<String, Image> images;
//   Trailer trailer;
//   String title;
//   String titleEnglish;
//   String titleJapanese;
//   String type;
//   int episodes;
//   String rating;

//   AnimeId({
//     required this.malId,
//     required this.url,
//     required this.images,
//     required this.trailer,
//     required this.title,
//     required this.titleEnglish,
//     required this.titleJapanese,
//     required this.type,
//     required this.episodes,
//     required this.rating,
//   });

//   factory AnimeId.fromJson(Map<String, dynamic> json) {
//     return AnimeId(
//       malId: json['mal_id'],
//       url: json['url'],
//       images: Map.from(json["images"])
//           .map((k, v) => MapEntry<String, Image>(k, Image.fromJson(v))),
//       trailer: Trailer.fromJson(json["trailer"]),
//       title: json['title'],
//       titleEnglish: json['title_english'],
//       titleJapanese: json['title_japanese'],
//       type: json['type'],
//       episodes: json['episodes'],
//       rating: json['rating'],
//     );
//   }
// }

// class Images {
//   Image jpg;
//   Image webp;

//   Images({
//     required this.jpg,
//     required this.webp,
//   });

//   factory Images.fromJson(Map<String, dynamic> json) {
//     return Images(
//       jpg: Image.fromJson(json['jpg']),
//       webp: Image.fromJson(json['webp']),
//     );
//   }
// }

// class Image {
//   String imageUrl;
//   String smallImageUrl;
//   String largeImageUrl;

//   Image({
//     required this.imageUrl,
//     required this.smallImageUrl,
//     required this.largeImageUrl,
//   });

//   factory Image.fromJson(Map<String, dynamic> json) => Image(
//         imageUrl: json["image_url"],
//         smallImageUrl: json["small_image_url"],
//         largeImageUrl: json["large_image_url"],
//       );
// }

// class Trailer {
//   String youtubeId;
//   String url;
//   String embedUrl;

//   Trailer({
//     required this.youtubeId,
//     required this.url,
//     required this.embedUrl,
//   });

//   factory Trailer.fromJson(Map<String, dynamic> json) => Trailer(
//         youtubeId: json["youtube_id"],
//         url: json["url"],
//         embedUrl: json["embed_url"],
//       );
// }
