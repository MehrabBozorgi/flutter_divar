class CarModel {
  final int id;
  final int sakht;
  final String title;
  final String price;
  final String img;
  final String zaman_enteshar;
  final String kar_kard;
  final String color;
  final String berand;
  final String tozihat;
  final String shahr;
  final String ostan;

  CarModel({
    required this.id,
    required this.sakht,
    required this.title,
    required this.price,
    required this.img,
    required this.zaman_enteshar,
    required this.kar_kard,
    required this.color,
    required this.tozihat,
    required this.shahr,
    required this.ostan,
    required this.berand,
  });

  factory CarModel.fromJson(Map<String, dynamic> json) {
    return CarModel(
      id: int.parse(json['id']),
      sakht: int.parse(json['sakht']),
      title: json['title'],
      berand: json['berand'],
      price: json['price'],
      img: json['img'],
      zaman_enteshar: json['zaman_enteshar'],
      kar_kard: json['kar_kard'],
      color: json['color'],
      tozihat: json['tozihat'],
      shahr: json['shahr'],
      ostan: json['ostan'],
    );
  }
}
