
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

  Map<String, dynamic> toJson() => {
        "yet": yet,
        "owned": owned,
        "beaten": beaten,
        "toplay": toplay,
        "dropped": dropped,
        "playing": playing,
      };
}
