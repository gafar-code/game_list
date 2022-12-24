
import 'developer.dart';

class Store {
  Store({
    this.id,
    this.url,
    this.store,
  });

  final int? id;
  final String? url;
  final Developer? store;

  Store copyWith({
    int? id,
    String? url,
    Developer? store,
  }) =>
      Store(
        id: id ?? this.id,
        url: url ?? this.url,
        store: store ?? this.store,
      );

  factory Store.fromJson(Map<String, dynamic> json) => Store(
        id: json["id"],
        url: json["url"],
        store: Developer.fromJson(json["store"]),
      );
}
