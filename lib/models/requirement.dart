
class Requirements {
  Requirements({
    this.minimum,
    this.recommended,
  });

  final String? minimum;
  final String? recommended;

  Requirements copyWith({
    String? minimum,
    String? recommended,
  }) =>
      Requirements(
        minimum: minimum ?? this.minimum,
        recommended: recommended ?? this.recommended,
      );

  factory Requirements.fromJson(Map<String, dynamic> json) => Requirements(
        minimum: json["minimum"],
        recommended: json["recommended"],
      );

  Map<String, dynamic> toJson() => {
        "minimum": minimum,
        "recommended": recommended,
      };
}
