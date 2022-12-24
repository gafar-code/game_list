class ScreenShoot {
  ScreenShoot({
    this.image,
    this.hidden,
  });

  final String? image;
  final bool? hidden;

  ScreenShoot copyWith({
    String? image,
    bool? hidden,
  }) =>
      ScreenShoot(
        image: image ?? this.image,
        hidden: hidden ?? this.hidden,
      );

  factory ScreenShoot.fromJson(Map<String, dynamic> json) => ScreenShoot(
        image: json["image"],
        hidden: json["hidden"],
      );

  Map<String, dynamic> toJson() => {
        "image": image,
        "hidden": hidden,
      };
}
