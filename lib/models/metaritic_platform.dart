
class MetacriticPlatform {
  MetacriticPlatform({
    this.metascore,
    this.url,
    this.platform,
  });

  final int? metascore;
  final String? url;
  final MetacriticPlatformPlatform? platform;

  MetacriticPlatform copyWith({
    int? metascore,
    String? url,
    MetacriticPlatformPlatform? platform,
  }) =>
      MetacriticPlatform(
        metascore: metascore ?? this.metascore,
        url: url ?? this.url,
        platform: platform ?? this.platform,
      );

  factory MetacriticPlatform.fromJson(Map<String, dynamic> json) => MetacriticPlatform(
        metascore: json["metascore"],
        url: json["url"],
        platform: MetacriticPlatformPlatform.fromJson(json["platform"]),
      );
}

class MetacriticPlatformPlatform {
  MetacriticPlatformPlatform({
    this.platform,
    this.name,
    this.slug,
  });

  final int? platform;
  final String? name;
  final String? slug;

  MetacriticPlatformPlatform copyWith({
    int? platform,
    String? name,
    String? slug,
  }) =>
      MetacriticPlatformPlatform(
        platform: platform ?? this.platform,
        name: name ?? this.name,
        slug: slug ?? this.slug,
      );

  factory MetacriticPlatformPlatform.fromJson(Map<String, dynamic> json) => MetacriticPlatformPlatform(
        platform: json["platform"],
        name: json["name"],
        slug: json["slug"],
      );

  Map<String, dynamic> toJson() => {
        "platform": platform,
        "name": name,
        "slug": slug,
      };
}
