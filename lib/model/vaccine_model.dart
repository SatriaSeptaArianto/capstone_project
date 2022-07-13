class VaccineModel{
  int id;
  final String? name;
  final int? stock;
  int idHospitals;

  VaccineModel({
    required this.id,
    this.name,
    this.stock,
    required this.idHospitals
  });

  factory VaccineModel.fromJson(Map<String, dynamic> json) {
    return VaccineModel(
      id: json['id'],
      name: json['name'],
      stock: json['stock'],
      idHospitals: json['idHospitals'],
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'stock': stock,
    'idHospitals': idHospitals,
  };
}