class Car {
  String? car_name;
  String? country;
  int? price;
  String? car_color;
  int? year;
  List<Model>? car_model;

  Car.fromJson(Map<String, dynamic> json) {
    car_name = json['car_name'];
    country = json['country'];
    price = json['price'];
    car_color = json['car_color'];
    year = json['year'];

    car_model = List<Model>.from(
      json["car_model"].map((item) => Model.fromJson(item)),
    );
  }
}

class Model {
  String? model_name;
  bool? isBenzin;

  Model.fromJson(Map<String, dynamic> map) {
    model_name = map["model_name"];
    isBenzin = map["isBenzin"];
  }
}
