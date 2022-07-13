class ProvinceModel{
  int id;
  final String? name;

  ProvinceModel({
    required this.id,
    this.name,
  });
  
  factory ProvinceModel.fromJson(Map<String, dynamic> json) {
    return ProvinceModel(
      id: json['id'],
      name: json['name']
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name
  };
}