class HomeModel {
  final String title;
  final String img;
  final String price;
  final String metr_price;
  final String zaman_enteshar;
  final String sakht;
  final String metr;
  final String otagh;
  final String agahi_dahande;
  final String tabaghe;
  final String tozihat;
  final String sanad;
  final String shahr;
  final String ostan;

  HomeModel({
    required this.title,
    required this.img,
    required this.price,
    required this.metr_price,
    required this.zaman_enteshar,
    required this.sakht,
    required this.metr,
    required this.otagh,
    required this.agahi_dahande,
    required this.tabaghe,
    required this.tozihat,
    required this.sanad,
    required this.shahr,
    required this.ostan,
  });

  factory HomeModel.fromJson(Map<String, dynamic> json) {
    return HomeModel(
      //  id: int.parse(json['id']),
      sakht: (json['sakht']),
      metr: (json['metr']),
      otagh: (json['otagh']),
      tabaghe: (json['tabaghe']),
      title: json['title'],
      img: json['img'],
      price: json['price'],
      zaman_enteshar: json['zaman_enteshar'],
      metr_price: json['metr_price'],
      agahi_dahande: json['agahi_dahande'],
      tozihat: json['tozihat'],
      shahr: json['shahr'],
      sanad: json['sanad'],
      ostan: json['ostan'],
    );
  }
}
