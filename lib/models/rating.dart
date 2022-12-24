
class Rating {
  Rating({
    this.id,
    this.title,
    this.count,
    this.percent,
  });

  final int? id;
  final String? title;
  final int? count;
  final double? percent;

  Rating copyWith({
    int? id,
    String? title,
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
        title: json["title"],
        count: json["count"],
        percent: json["percent"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "count": count,
        "percent": percent,
      };
}
