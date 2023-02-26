class Animal {
  int? id;
  String? name;
  String? details;
  String? Image;

  Animal({
    this.id,
    this.name,
    this.details,
    this.Image,
  });

  Animal.fromMap(Map map) {
    id = map[id];
    name = map[name];
    details = map[details];
    Image = map[Image];
  }

  Map<String, dynamic> toMap() {
    return {
      'Id': id,
      'Name': name,
      'Details': details,
      'Image': Image,
    };
  }
}
