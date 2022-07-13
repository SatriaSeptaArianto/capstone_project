class CityModel{
  int id;
  final String? name;
  int idProvinces;

  CityModel({
    required this.id,
    this.name,
    required this.idProvinces
  });

  factory CityModel.fromJson(Map<String, dynamic> json) {
    return CityModel(
      id: json['id'],
      name: json['name'],
      idProvinces: json['idProvinces']
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'idProvinces': idProvinces
  };
}