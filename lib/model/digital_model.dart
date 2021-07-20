class DigitalModel {
  final int id;
  final String title;
  final String img;
  final String price;
  final String zaman_enteshar;
  final String berand;
  final String vaziat;
  final String tozihat;
  final String shahr;
  final String ostan;

  DigitalModel({
    required this.id,
    required this.title,
    required this.img,
    required this.price,
    required this.zaman_enteshar,
    required this.berand,
    required this.vaziat,
    required this.tozihat,
    required this.shahr,
    required this.ostan,
  });

  factory DigitalModel.fromJson(Map<String, dynamic> json) {
    return DigitalModel(
      id: int.parse(json['id']),
      title: json['title'],
      img: json['img'],
      price: json['price'],
      zaman_enteshar: json['zaman_enteshar'],
      berand: json['berand'],
      vaziat: json['vaziat'],
      tozihat: json['tozihat'],
      shahr: json['shahr'],
      ostan: json['ostan'],
    );
  }
}
