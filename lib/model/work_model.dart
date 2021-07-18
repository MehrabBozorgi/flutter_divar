class WorkModel {
  final int id;
  final String title;
  final String zaman_enteshar;
  final String noe_gharardad;
  final String sabeghe;
  final String price;
  final String img;
  final String work_time;
  final String tozihat;
  final String bime;
  final String shahr;
  final String ostan;

  WorkModel({
    required this.id,
    required this.title,
    required this.zaman_enteshar,
    required this.noe_gharardad,
    required this.sabeghe,
    required this.price,
    required this.img,
    required this.work_time,
    required this.tozihat,
    required this.bime,
    required this.shahr,
    required this.ostan,
  });

  factory WorkModel.fromJson(Map<String, dynamic> json) {
    return WorkModel(
      id: int.parse(json['id']),
      title: json['title'],
      zaman_enteshar: json['zaman_enteshar'],
      noe_gharardad: json['noe_gharardad'],
      sabeghe: json['sabeghe'],
      img: json['img'],
      tozihat: json['tozihat'],
      work_time: json['work_time'],
      bime: json['bime'],
      ostan: json['ostan'],
      price: json['price'],
      shahr: json['shahr'],
    );
  }
}
