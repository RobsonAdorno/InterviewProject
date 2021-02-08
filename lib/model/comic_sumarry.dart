import 'dart:convert';

class Comic {
  int id;
  String title;
  String description;
  int countItens;
  String price;
  String images;

  Comic({
    this.id,
    this.title,
    this.description,
    this.countItens,
    this.price,
    this.images,
  });

  Comic copyWith({
    int id,
    String title,
    String description,
    int countItens,
    String price,
    String images,
  }) {
    return Comic(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      countItens: countItens ?? this.countItens,
      price: price ?? this.price,
      images: images ?? this.images,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'countItens': countItens,
      'price': price,
      'images': images,
    };
  }

  factory Comic.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Comic(
      id: map['id'],
      title: map['title'],
      description: map['description'],
      price: map['prices'][0]['price'].toString(),
    );
  }

  String toJson() => json.encode(toMap());

  factory Comic.fromJson(String source) => Comic.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Comic(id: $id, title: $title, description: $description, countItens: $countItens, price: $price, images: $images)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Comic &&
        o.id == id &&
        o.title == title &&
        o.description == description &&
        o.countItens == countItens &&
        o.price == price &&
        o.images == images;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        title.hashCode ^
        description.hashCode ^
        countItens.hashCode ^
        price.hashCode ^
        images.hashCode;
  }
}
