import 'package:gafar_game_list/models/game.dart';

class ResponseData {
  const ResponseData({
    this.count,
    this.next,
    this.previous,
    this.results,
    this.userPlatforms,
  });

  final int? count;
  final String? next;
  final dynamic previous;
  final List<dynamic>? results;
  final bool? userPlatforms;

  ResponseData copyWith({
    int? count,
    String? next,
    dynamic previous,
    List<dynamic>? results,
    bool? userPlatforms,
  }) =>
      ResponseData(
        count: count ?? this.count,
        next: next ?? this.next,
        previous: previous ?? this.previous,
        results: results ?? this.results,
        userPlatforms: userPlatforms ?? this.userPlatforms,
      );

  factory ResponseData.fromJson(Map<String, dynamic> json) => ResponseData(
        count: json["count"],
        next: json["next"],
        previous: json["previous"],
        results: json['results'],
        userPlatforms: json["user_platforms"],
      );
}
