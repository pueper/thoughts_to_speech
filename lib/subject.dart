class Subject {
  String name;
  String image;
  // TODO sound?
  String category;
  bool isObject;
  bool isPhrase;
  bool isPersonal;
  bool isFavorite;

  Subject(this.name, this.image, this.category, this.isObject, this.isPhrase, this.isPersonal, this.isFavorite);

  factory Subject.fromJson(Map<String, dynamic> data) {
    final name = data['name'] as String;
    final image = data['image'] as String;
    final category = data['category'] as String;
    final isObject = data['isObject'] as bool;
    final isPhrase = data['isPhrase'] as bool;
    final isPersonal = data['isPersonal'] as bool;
    final isFavorite = data['isFavorite'] as bool;
    return Subject(name, image, category, isObject, isPhrase, isPersonal, isFavorite);
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'image': image,
      'category': category,
      'isObject': isObject,
      'isPhrase': isPhrase,
      'isPersonal': isPersonal,
      'isFavorite': isFavorite
    };
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Subject &&
              runtimeType == other.runtimeType &&
              name == other.name &&
              image == other.image &&
              category == other.category &&
              isObject == other.isObject &&
              isPhrase == other.isPhrase &&
              isPersonal == other.isPersonal &&
              isFavorite == other.isFavorite;

  @override
  int get hashCode => name.hashCode ^ image.hashCode ^ category.hashCode ^ isObject.hashCode ^ isPhrase.hashCode ^ isPersonal.hashCode ^ isFavorite.hashCode;

  @override
  String toString() {
    return 'Subject{name: $name, category: $category, isObject: $isObject, isPhrase: $isPhrase, isPersonal: $isPersonal, isFavorite: $isFavorite}';
  }
}