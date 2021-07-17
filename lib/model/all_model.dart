class AllModel {
  final int cat_id;
  final int simcart;
  final String tabaghe;
  final String metr;
  final String sakht;
  final String otagh;

  final String title;
  final String img;
  final String zaman_enteshar;
  final String berand;
  final String vaziat;
  final String price;
  final String metr_price;
  final String tozihat;
  final String agahi_dahande;
  final String sanad;
  final String noe_gharardad;
  final String work_time;
  final String sabeghe;
  final String bime;
  final String ehraz;
  final String kar_kard;
  final String color;
  final String ostan;
  final String shahr;
  final String badane;
  final String motor;
  final String dande;
  final String number;

  AllModel({
    required this.cat_id,
    required this.simcart,
    required this.title,
    required this.img,
    required this.zaman_enteshar,
    required this.berand,
    required this.vaziat,
    required this.price,
    required this.metr_price,
    required this.tozihat,
    required this.agahi_dahande,
    required this.tabaghe,
    required this.metr,
    required this.sakht,
    required this.otagh,
    required this.sanad,
    required this.noe_gharardad,
    required this.work_time,
    required this.sabeghe,
    required this.bime,
    required this.ehraz,
    required this.kar_kard,
    required this.color,
    required this.dande,
    required this.motor,
    required this.badane,
    required this.ostan,
    required this.shahr,
    required this.number,
  });

  factory AllModel.fromJson(Map<String, dynamic> json) {
    return AllModel(
      //id: int.parse(json['id']),
      otagh: (json['otagh']),
      sakht: (json['sakht']),
      simcart: int.parse(json['simcart']),
      tabaghe: (json['tabaghe']),
      metr: (json['metr']),
      cat_id: int.parse(json['cat_id']),

      title: json['title'],
      img: json['img'],
      price: json['price'],
      metr_price: json['metr_price'],
      zaman_enteshar: json['zaman_enteshar'],
      berand: json['berand'],
      vaziat: json['vaziat'],
      tozihat: json['tozihat'],
      agahi_dahande: json['agahi_dahande'],
      sanad: json['sanad'],
      ostan: json['ostan'],
      shahr: json['shahr'],
      noe_gharardad: json['noe_gharardad'],
      work_time: json['work_time'],
      bime: json['bime'],
      ehraz: json['ehraz'],
      sabeghe: json['sabeghe'],
      color: json['color'],
      kar_kard: json['kar_kard'],
      badane: json['badane'],
      dande: json['dande'],
      motor: json['motor'],
      number: json['number'],
    );
  }
}
