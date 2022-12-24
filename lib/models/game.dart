import 'added_by_status.dart';
import 'developer.dart';
import 'metaritic_platform.dart';
import 'platform.dart';
import 'rating.dart';
import 'store.dart';

class Game {
  Game({
    this.id,
    this.slug,
    this.name,
    this.nameOriginal,
    this.description,
    this.metacritic,
    this.metacriticPlatforms,
    this.released,
    this.tba,
    this.updated,
    this.backgroundImage,
    this.backgroundImageAdditional,
    this.website,
    this.rating,
    this.ratingTop,
    this.ratings,
    this.added,
    this.addedByStatus,
    this.playtime,
    this.screenshotsCount,
    this.moviesCount,
    this.creatorsCount,
    this.achievementsCount,
    this.parentAchievementsCount,
    this.redditUrl,
    this.redditName,
    this.redditDescription,
    this.redditLogo,
    this.redditCount,
    this.twitchCount,
    this.youtubeCount,
    this.reviewsTextCount,
    this.ratingsCount,
    this.suggestionsCount,
    this.alternativeNames,
    this.metacriticUrl,
    this.parentsCount,
    this.additionsCount,
    this.gameSeriesCount,
    this.userGame,
    this.reviewsCount,
    this.saturatedColor,
    this.dominantColor,
    this.parentPlatforms,
    this.platforms,
    this.stores,
    this.developers,
    this.genres,
    this.tags,
    this.publishers,
    this.esrbRating,
    this.clip,
    this.descriptionRaw,
  });

  final int? id;
  final String? slug;
  final String? name;
  final String? nameOriginal;
  final String? description;
  final int? metacritic;
  final List<MetacriticPlatform>? metacriticPlatforms;
  final DateTime? released;
  final bool? tba;
  final DateTime? updated;
  final String? backgroundImage;
  final String? backgroundImageAdditional;
  final String? website;
  final double? rating;
  final int? ratingTop;
  final List<Rating>? ratings;
  final int? added;
  final AddedByStatus? addedByStatus;
  final int? playtime;
  final int? screenshotsCount;
  final int? moviesCount;
  final int? creatorsCount;
  final int? achievementsCount;
  final int? parentAchievementsCount;
  final String? redditUrl;
  final String? redditName;
  final String? redditDescription;
  final String? redditLogo;
  final int? redditCount;
  final int? twitchCount;
  final int? youtubeCount;
  final int? reviewsTextCount;
  final int? ratingsCount;
  final int? suggestionsCount;
  final List<dynamic>? alternativeNames;
  final String? metacriticUrl;
  final int? parentsCount;
  final int? additionsCount;
  final int? gameSeriesCount;
  final dynamic userGame;
  final int? reviewsCount;
  final String? saturatedColor;
  final String? dominantColor;
  final List<ParentPlatform>? parentPlatforms;
  final List<PlatformElement>? platforms;
  final List<Store>? stores;
  final List<Developer>? developers;
  final List<Developer>? genres;
  final List<Developer>? tags;
  final List<Developer>? publishers;
  final dynamic esrbRating;
  final dynamic clip;
  final String? descriptionRaw;

  Game copyWith({
    int? id,
    String? slug,
    String? name,
    String? nameOriginal,
    String? description,
    int? metacritic,
    List<MetacriticPlatform>? metacriticPlatforms,
    DateTime? released,
    bool? tba,
    DateTime? updated,
    String? backgroundImage,
    String? backgroundImageAdditional,
    String? website,
    double? rating,
    int? ratingTop,
    List<Rating>? ratings,
    int? added,
    AddedByStatus? addedByStatus,
    int? playtime,
    int? screenshotsCount,
    int? moviesCount,
    int? creatorsCount,
    int? achievementsCount,
    int? parentAchievementsCount,
    String? redditUrl,
    String? redditName,
    String? redditDescription,
    String? redditLogo,
    int? redditCount,
    int? twitchCount,
    int? youtubeCount,
    int? reviewsTextCount,
    int? ratingsCount,
    int? suggestionsCount,
    List<dynamic>? alternativeNames,
    String? metacriticUrl,
    int? parentsCount,
    int? additionsCount,
    int? gameSeriesCount,
    dynamic userGame,
    int? reviewsCount,
    String? saturatedColor,
    String? dominantColor,
    List<ParentPlatform>? parentPlatforms,
    List<PlatformElement>? platforms,
    List<Store>? stores,
    List<Developer>? developers,
    List<Developer>? genres,
    List<Developer>? tags,
    List<Developer>? publishers,
    dynamic esrbRating,
    dynamic clip,
    String? descriptionRaw,
  }) =>
      Game(
        id: id ?? this.id,
        slug: slug ?? this.slug,
        name: name ?? this.name,
        nameOriginal: nameOriginal ?? this.nameOriginal,
        description: description ?? this.description,
        metacritic: metacritic ?? this.metacritic,
        metacriticPlatforms: metacriticPlatforms ?? this.metacriticPlatforms,
        released: released ?? this.released,
        tba: tba ?? this.tba,
        updated: updated ?? this.updated,
        backgroundImage: backgroundImage ?? this.backgroundImage,
        backgroundImageAdditional: backgroundImageAdditional ?? this.backgroundImageAdditional,
        website: website ?? this.website,
        rating: rating ?? this.rating,
        ratingTop: ratingTop ?? this.ratingTop,
        ratings: ratings ?? this.ratings,
        added: added ?? this.added,
        addedByStatus: addedByStatus ?? this.addedByStatus,
        playtime: playtime ?? this.playtime,
        screenshotsCount: screenshotsCount ?? this.screenshotsCount,
        moviesCount: moviesCount ?? this.moviesCount,
        creatorsCount: creatorsCount ?? this.creatorsCount,
        achievementsCount: achievementsCount ?? this.achievementsCount,
        parentAchievementsCount: parentAchievementsCount ?? this.parentAchievementsCount,
        redditUrl: redditUrl ?? this.redditUrl,
        redditName: redditName ?? this.redditName,
        redditDescription: redditDescription ?? this.redditDescription,
        redditLogo: redditLogo ?? this.redditLogo,
        redditCount: redditCount ?? this.redditCount,
        twitchCount: twitchCount ?? this.twitchCount,
        youtubeCount: youtubeCount ?? this.youtubeCount,
        reviewsTextCount: reviewsTextCount ?? this.reviewsTextCount,
        ratingsCount: ratingsCount ?? this.ratingsCount,
        suggestionsCount: suggestionsCount ?? this.suggestionsCount,
        alternativeNames: alternativeNames ?? this.alternativeNames,
        metacriticUrl: metacriticUrl ?? this.metacriticUrl,
        parentsCount: parentsCount ?? this.parentsCount,
        additionsCount: additionsCount ?? this.additionsCount,
        gameSeriesCount: gameSeriesCount ?? this.gameSeriesCount,
        userGame: userGame ?? this.userGame,
        reviewsCount: reviewsCount ?? this.reviewsCount,
        saturatedColor: saturatedColor ?? this.saturatedColor,
        dominantColor: dominantColor ?? this.dominantColor,
        parentPlatforms: parentPlatforms ?? this.parentPlatforms,
        platforms: platforms ?? this.platforms,
        stores: stores ?? this.stores,
        developers: developers ?? this.developers,
        genres: genres ?? this.genres,
        tags: tags ?? this.tags,
        publishers: publishers ?? this.publishers,
        esrbRating: esrbRating ?? this.esrbRating,
        clip: clip ?? this.clip,
        descriptionRaw: descriptionRaw ?? this.descriptionRaw,
      );

  factory Game.fromJson(Map<String, dynamic> json) => Game(
        id: json["id"],
        slug: json["slug"],
        name: json["name"],
        nameOriginal: json["name_original"],
        description: json["description"],
        metacritic: json["metacritic"],
        metacriticPlatforms: json["metacritic_platforms"] == null ? null : List<MetacriticPlatform>.from(json["metacritic_platforms"].map((x) => MetacriticPlatform.fromJson(x))),
        released: DateTime.tryParse(json["released"].toString()),
        tba: json["tba"],
        updated: DateTime.tryParse(json["updated"].toString()),
        backgroundImage: json["background_image"],
        backgroundImageAdditional: json["background_image_additional"],
        website: json["website"],
        rating: json["rating"].toDouble(),
        ratingTop: json["rating_top"],
        ratings: json["ratings"] == null ? null : List<Rating>.from(json["ratings"].map((x) => Rating.fromJson(x))),
        added: json["added"],
        addedByStatus: json["added_by_status"] == null ? null : AddedByStatus.fromJson(json["added_by_status"]),
        playtime: json["playtime"],
        screenshotsCount: json["screenshots_count"],
        moviesCount: json["movies_count"],
        creatorsCount: json["creators_count"],
        achievementsCount: json["achievements_count"],
        parentAchievementsCount: json["parent_achievements_count"],
        redditUrl: json["reddit_url"],
        redditName: json["reddit_name"],
        redditDescription: json["reddit_description"],
        redditLogo: json["reddit_logo"],
        redditCount: json["reddit_count"],
        twitchCount: json["twitch_count"],
        youtubeCount: json["youtube_count"],
        reviewsTextCount: json["reviews_text_count"],
        ratingsCount: json["ratings_count"],
        suggestionsCount: json["suggestions_count"],
        alternativeNames: json["alternative_names"] == null ? null : List<dynamic>.from(json["alternative_names"].map((x) => x)),
        metacriticUrl: json["metacritic_url"],
        parentsCount: json["parents_count"],
        additionsCount: json["additions_count"],
        gameSeriesCount: json["game_series_count"],
        userGame: json["user_game"],
        reviewsCount: json["reviews_count"],
        saturatedColor: json["saturated_color"],
        dominantColor: json["dominant_color"],
        parentPlatforms: json["parent_platforms"] == null ? null : List<ParentPlatform>.from(json["parent_platforms"].map((x) => ParentPlatform.fromJson(x))),
        platforms: json["platforms"] == null ? null : List<PlatformElement>.from(json["platforms"].map((x) => PlatformElement.fromJson(x))),
        stores: json["stores"] == null ? null : List<Store>.from(json["stores"].map((x) => Store.fromJson(x))),
        developers: json["developers"] == null ? null : List<Developer>.from(json["developers"].map((x) => Developer.fromJson(x))),
        genres: json["genres"] == null ? null : List<Developer>.from(json["genres"].map((x) => Developer.fromJson(x))),
        tags: json["tags"] == null ? null : List<Developer>.from(json["tags"].map((x) => Developer.fromJson(x))),
        publishers: json["publishers"] == null ? null : List<Developer>.from(json["publishers"].map((x) => Developer.fromJson(x))),
        esrbRating: json["esrb_rating"],
        clip: json["clip"],
        descriptionRaw: json["description_raw"],
      );
}

enum Language { eng }

final languageValues = EnumValues({"eng": Language.eng});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String>? get reverse {
    reverseMap ??= map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
