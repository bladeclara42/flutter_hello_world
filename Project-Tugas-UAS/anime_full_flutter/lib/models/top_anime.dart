class TopAnime {
  int malId;
  String url;
  Map<String, Image>? images;
  Trailer? trailer;
  String title;
  String? titleEnglish;
  String? titleJapanese;
  String? type;
  int? episodes;
  String? rating;

  TopAnime({
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
  });

  factory TopAnime.fromJson(Map<String, dynamic> json) {
    return TopAnime(
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

// class TopAnime {
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

//   TopAnime({
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

//   factory TopAnime.fromJson(Map<String, dynamic> json) {
//     return TopAnime(
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

//   Map<String, dynamic> toJson() {
//     return {
//       'mal_id': malId,
//       'url': url,
//       'images': images.map((k, v) => MapEntry(k, v.toJson())),
//       'trailer': trailer.toJson(),
//       'title': title,
//       'title_english': titleEnglish,
//       'title_japanese': titleJapanese,
//       'type': type,
//       'episodes': episodes,
//       'rating': rating,
//     };
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

//   Map<String, dynamic> toJson() {
//     return {
//       'image_url': imageUrl,
//       'small_image_url': smallImageUrl,
//       'large_image_url': largeImageUrl,
//     };
//   }
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

//   Map<String, dynamic> toJson() {
//     return {
//       'youtube_id': youtubeId,
//       'url': url,
//       'embed_url': embedUrl,
//     };
//   }
// }
