
class Game {
  Game({
    this.slug,
    this.name,
    this.playtime,
    this.platforms,
    this.stores,
    this.released,
    this.tba,
    this.backgroundImage,
    this.rating,
    this.ratingTop,
    this.ratings,
    this.ratingsCount,
    this.reviewsTextCount,
    this.added,
    this.addedByStatus,
    this.metacritic,
    this.suggestionsCount,
    this.updated,
    this.id,
    this.score,
    this.clip,
    this.tags,
    this.esrbRating,
    this.userGame,
    this.reviewsCount,
    this.saturatedColor,
    this.dominantColor,
    this.shortScreenshots,
    this.parentPlatforms,
    this.genres,
    this.communityRating,
  });

  final String? slug;
  final String? name;
  final int? playtime;
  final List<Platform>? platforms;
  final List<Store>? stores;
  final DateTime? released;
  final bool? tba;
  final String? backgroundImage;
  final double? rating;
  final int? ratingTop;
  final List<Rating>? ratings;
  final int? ratingsCount;
  final int? reviewsTextCount;
  final int? added;
  final AddedByStatus? addedByStatus;
  final int? metacritic;
  final int? suggestionsCount;
  final DateTime? updated;
  final int? id;
  final dynamic score;
  final dynamic clip;
  final List<Tag>? tags;
  final EsrbRating? esrbRating;
  final dynamic userGame;
  final int? reviewsCount;
  final Color? saturatedColor;
  final Color? dominantColor;
  final List<ShortScreenshot>? shortScreenshots;
  final List<Platform>? parentPlatforms;
  final List<Genre>? genres;
  final int? communityRating;

  Game copyWith({
    String? slug,
    String? name,
    int? playtime,
    List<Platform>? platforms,
    List<Store>? stores,
    DateTime? released,
    bool? tba,
    String? backgroundImage,
    double? rating,
    int? ratingTop,
    List<Rating>? ratings,
    int? ratingsCount,
    int? reviewsTextCount,
    int? added,
    AddedByStatus? addedByStatus,
    int? metacritic,
    int? suggestionsCount,
    DateTime? updated,
    int? id,
    dynamic score,
    dynamic clip,
    List<Tag>? tags,
    EsrbRating? esrbRating,
    dynamic userGame,
    int? reviewsCount,
    Color? saturatedColor,
    Color? dominantColor,
    List<ShortScreenshot>? shortScreenshots,
    List<Platform>? parentPlatforms,
    List<Genre>? genres,
    int? communityRating,
  }) =>
      Game(
        slug: slug ?? this.slug,
        name: name ?? this.name,
        playtime: playtime ?? this.playtime,
        platforms: platforms ?? this.platforms,
        stores: stores ?? this.stores,
        released: released ?? this.released,
        tba: tba ?? this.tba,
        backgroundImage: backgroundImage ?? this.backgroundImage,
        rating: rating ?? this.rating,
        ratingTop: ratingTop ?? this.ratingTop,
        ratings: ratings ?? this.ratings,
        ratingsCount: ratingsCount ?? this.ratingsCount,
        reviewsTextCount: reviewsTextCount ?? this.reviewsTextCount,
        added: added ?? this.added,
        addedByStatus: addedByStatus ?? this.addedByStatus,
        metacritic: metacritic ?? this.metacritic,
        suggestionsCount: suggestionsCount ?? this.suggestionsCount,
        updated: updated ?? this.updated,
        id: id ?? this.id,
        score: score ?? this.score,
        clip: clip ?? this.clip,
        tags: tags ?? this.tags,
        esrbRating: esrbRating ?? this.esrbRating,
        userGame: userGame ?? this.userGame,
        reviewsCount: reviewsCount ?? this.reviewsCount,
        saturatedColor: saturatedColor ?? this.saturatedColor,
        dominantColor: dominantColor ?? this.dominantColor,
        shortScreenshots: shortScreenshots ?? this.shortScreenshots,
        parentPlatforms: parentPlatforms ?? this.parentPlatforms,
        genres: genres ?? this.genres,
        communityRating: communityRating ?? this.communityRating,
      );

  factory Game.fromJson(Map<String, dynamic> json) => Game(
        slug: json["slug"],
        name: json["name"],
        playtime: json["playtime"],
        platforms: List<Platform>.from(json["platforms"].map((x) => Platform.fromJson(x))),
        stores: List<Store>.from(json["stores"].map((x) => Store.fromJson(x))),
        released: DateTime.parse(json["released"]),
        tba: json["tba"],
        backgroundImage: json["background_image"],
        rating: json["rating"].toDouble(),
        ratingTop: json["rating_top"],
        ratings: List<Rating>.from(json["ratings"].map((x) => Rating.fromJson(x))),
        ratingsCount: json["ratings_count"],
        reviewsTextCount: json["reviews_text_count"],
        added: json["added"],
        addedByStatus: AddedByStatus.fromJson(json["added_by_status"]),
        metacritic: json["metacritic"] ?? null,
        suggestionsCount: json["suggestions_count"],
        updated: DateTime.parse(json["updated"]),
        id: json["id"],
        score: json["score"],
        clip: json["clip"],
        tags: List<Tag>.from(json["tags"].map((x) => Tag.fromJson(x))),
        esrbRating: json["esrb_rating"] == null ? null : EsrbRating.fromJson(json["esrb_rating"]),
        userGame: json["user_game"],
        reviewsCount: json["reviews_count"],
        saturatedColor: colorValues.map[json["saturated_color"]],
        dominantColor: colorValues.map[json["dominant_color"]],
        shortScreenshots: List<ShortScreenshot>.from(json["short_screenshots"].map((x) => ShortScreenshot.fromJson(x))),
        parentPlatforms: List<Platform>.from(json["parent_platforms"].map((x) => Platform.fromJson(x))),
        genres: List<Genre>.from(json["genres"].map((x) => Genre.fromJson(x))),
        communityRating: json["community_rating"] ?? null,
      );
}

class AddedByStatus {
  AddedByStatus({
    this.yet,
    this.owned,
    this.beaten,
    this.toplay,
    this.dropped,
    this.playing,
  });

  final int? yet;
  final int? owned;
  final int? beaten;
  final int? toplay;
  final int? dropped;
  final int? playing;

  AddedByStatus? copyWith({
    int? yet,
    int? owned,
    int? beaten,
    int? toplay,
    int? dropped,
    int? playing,
  }) =>
      AddedByStatus(
        yet: yet ?? this.yet,
        owned: owned ?? this.owned,
        beaten: beaten ?? this.beaten,
        toplay: toplay ?? this.toplay,
        dropped: dropped ?? this.dropped,
        playing: playing ?? this.playing,
      );

  factory AddedByStatus.fromJson(Map<String, dynamic> json) => AddedByStatus(
        yet: json["yet"],
        owned: json["owned"],
        beaten: json["beaten"],
        toplay: json["toplay"],
        dropped: json["dropped"],
        playing: json["playing"],
      );
}

enum Color { THE_0_F0_F0_F }

final colorValues = EnumValues({"0f0f0f": Color.THE_0_F0_F0_F});

class EsrbRating {
  EsrbRating({
    this.id,
    this.name,
    this.slug,
    this.nameEn,
    this.nameRu,
  });

  final int? id;
  final String? name;
  final String? slug;
  final String? nameEn;
  final String? nameRu;

  EsrbRating? copyWith({
    int? id,
    String? name,
    String? slug,
    String? nameEn,
    String? nameRu,
  }) =>
      EsrbRating(
        id: id ?? this.id,
        name: name ?? this.name,
        slug: slug ?? this.slug,
        nameEn: nameEn ?? this.nameEn,
        nameRu: nameRu ?? this.nameRu,
      );

  factory EsrbRating.fromJson(Map<String, dynamic> json) => EsrbRating(
        id: json["id"],
        name: json["name"],
        slug: json["slug"],
        nameEn: json["name_en"],
        nameRu: json["name_ru"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "slug": slug,
        "name_en": nameEn,
        "name_ru": nameRu,
      };
}

class Genre {
  Genre({
    this.id,
    this.name,
    this.slug,
  });

  final int? id;
  final String? name;
  final String? slug;

  Genre copyWith({
    int? id,
    String? name,
    String? slug,
  }) =>
      Genre(
        id: id ?? this.id,
        name: name ?? this.name,
        slug: slug ?? this.slug,
      );

  factory Genre.fromJson(Map<String, dynamic> json) => Genre(
        id: json["id"],
        name: json["name"],
        slug: json["slug"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "slug": slug,
      };
}

class Platform {
  Platform({
    this.platform,
  });

  final Genre? platform;

  Platform copyWith({
    Genre? platform,
  }) =>
      Platform(
        platform: platform ?? this.platform,
      );

  factory Platform.fromJson(Map<String, dynamic> json) => Platform(
        platform: Genre.fromJson(json["platform"]),
      );
}

class Rating {
  Rating({
    this.id,
    this.title,
    this.count,
    this.percent,
  });

  final int? id;
  final Title? title;
  final int? count;
  final double? percent;

  Rating copyWith({
    int? id,
    Title? title,
    int? count,
    double? percent,
  }) =>
      Rating(
        id: id ?? this.id,
        title: title ?? this.title,
        count: count ?? this.count,
        percent: percent ?? this.percent,
      );

  factory Rating.fromJson(Map<String, dynamic> json) => Rating(
        id: json["id"],
        title: titleValues.map[json["title"]],
        count: json["count"],
        percent: json["percent"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": titleValues.reverse?[title],
        "count": count,
        "percent": percent,
      };
}

enum Title { SKIP, MEH, RECOMMENDED, EXCEPTIONAL }

final titleValues = EnumValues({"exceptional": Title.EXCEPTIONAL, "meh": Title.MEH, "recommended": Title.RECOMMENDED, "skip": Title.SKIP});

class ShortScreenshot {
  ShortScreenshot({
    this.id,
    this.image,
  });

  final int? id;
  final String? image;

  ShortScreenshot copyWith({
    int? id,
    String? image,
  }) =>
      ShortScreenshot(
        id: id ?? this.id,
        image: image ?? this.image,
      );

  factory ShortScreenshot.fromJson(Map<String, dynamic> json) => ShortScreenshot(
        id: json["id"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "image": image,
      };
}

class Store {
  Store({
    this.store,
  });

  final Genre? store;

  Store copyWith({
    Genre? store,
  }) =>
      Store(
        store: store ?? this.store,
      );

  factory Store.fromJson(Map<String, dynamic> json) => Store(
        store: Genre.fromJson(json["store"]),
      );
}

class Tag {
  Tag({
    this.id,
    this.name,
    this.slug,
    this.language,
    this.gamesCount,
    this.imageBackground,
  });

  final int? id;
  final String? name;
  final String? slug;
  final Language? language;
  final int? gamesCount;
  final String? imageBackground;

  Tag copyWith({
    int? id,
    String? name,
    String? slug,
    Language? language,
    int? gamesCount,
    String? imageBackground,
  }) =>
      Tag(
        id: id ?? this.id,
        name: name ?? this.name,
        slug: slug ?? this.slug,
        language: language ?? this.language,
        gamesCount: gamesCount ?? this.gamesCount,
        imageBackground: imageBackground ?? this.imageBackground,
      );

  factory Tag.fromJson(Map<String, dynamic> json) => Tag(
        id: json["id"],
        name: json["name"],
        slug: json["slug"],
        language: languageValues.map[json["language"]],
        gamesCount: json["games_count"],
        imageBackground: json["image_background"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "slug": slug,
        "language": languageValues.reverse?[language],
        "games_count": gamesCount,
        "image_background": imageBackground,
      };
}

enum Language { ENG, RUS }

final languageValues = EnumValues({"eng": Language.ENG, "rus": Language.RUS});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String>? get reverse {
    reverseMap ??= map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}