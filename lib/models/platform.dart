import 'requirement.dart';

class ParentPlatform {
  ParentPlatform({
    this.platform,
  });

  final ParentPlatformPlatform? platform;

  ParentPlatform copyWith({
    ParentPlatformPlatform? platform,
  }) =>
      ParentPlatform(
        platform: platform ?? this.platform,
      );

  factory ParentPlatform.fromJson(Map<String, dynamic> json) => ParentPlatform(
        platform: ParentPlatformPlatform.fromJson(json["platform"]),
      );
}

class ParentPlatformPlatform {
  ParentPlatformPlatform({
    this.id,
    this.name,
    this.slug,
  });

  final int? id;
  final String? name;
  final String? slug;

  ParentPlatformPlatform copyWith({
    int? id,
    String? name,
    String? slug,
  }) =>
      ParentPlatformPlatform(
        id: id ?? this.id,
        name: name ?? this.name,
        slug: slug ?? this.slug,
      );

  factory ParentPlatformPlatform.fromJson(Map<String, dynamic> json) => ParentPlatformPlatform(
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

class PlatformElement {
  PlatformElement({
    this.platform,
    this.releasedAt,
    this.requirements,
  });

  final PlatformPlatform? platform;
  final DateTime? releasedAt;
  final Requirements? requirements;

  PlatformElement copyWith({
    PlatformPlatform? platform,
    DateTime? releasedAt,
    Requirements? requirements,
  }) =>
      PlatformElement(
        platform: platform ?? this.platform,
        releasedAt: releasedAt ?? this.releasedAt,
        requirements: requirements ?? this.requirements,
      );

  factory PlatformElement.fromJson(Map<String, dynamic> json) => PlatformElement(
        platform: json["platform"] == null ? null : PlatformPlatform.fromJson(json["platform"]),
        releasedAt: json["released_at"] == null ? null : DateTime.parse(json["released_at"]),
        requirements: json["requirements"] == null ? null : Requirements.fromJson(json["requirements"]),
      );
}

class PlatformPlatform {
  PlatformPlatform({
    this.id,
    this.name,
    this.slug,
    this.image,
    this.yearEnd,
    this.yearStart,
    this.gamesCount,
    this.imageBackground,
  });

  final int? id;
  final String? name;
  final String? slug;
  final dynamic image;
  final dynamic yearEnd;
  final int? yearStart;
  final int? gamesCount;
  final String? imageBackground;

  PlatformPlatform copyWith({
    int? id,
    String? name,
    String? slug,
    dynamic image,
    dynamic yearEnd,
    int? yearStart,
    int? gamesCount,
    String? imageBackground,
  }) =>
      PlatformPlatform(
        id: id ?? this.id,
        name: name ?? this.name,
        slug: slug ?? this.slug,
        image: image ?? this.image,
        yearEnd: yearEnd ?? this.yearEnd,
        yearStart: yearStart ?? this.yearStart,
        gamesCount: gamesCount ?? this.gamesCount,
        imageBackground: imageBackground ?? this.imageBackground,
      );

  factory PlatformPlatform.fromJson(Map<String, dynamic> json) => PlatformPlatform(
        id: json["id"],
        name: json["name"],
        slug: json["slug"],
        image: json["image"],
        yearEnd: json["year_end"],
        yearStart: json["year_start"],
        gamesCount: json["games_count"],
        imageBackground: json["image_background"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "slug": slug,
        "image": image,
        "year_end": yearEnd,
        "year_start": yearStart,
        "games_count": gamesCount,
        "image_background": imageBackground,
      };
}
