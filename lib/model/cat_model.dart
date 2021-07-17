class CatModel {
  final int id;
  final int cat_id;
  final String title;
  final String img;

  CatModel({
    required this.id,
    required this.title,
    required this.img,
    required this.cat_id,
  });

  factory CatModel.fromJson(Map<String, dynamic> json) {
    return CatModel(
      id: int.parse(json['id']),
      cat_id: int.parse(json['cat_id']),
      title: json['title'],
      img: json['img'],
    );
  }
}
