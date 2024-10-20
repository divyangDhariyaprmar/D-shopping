/// data : [{"title":"title","price":"price","description":"description","image":"image"},{"title":"Mens Casual Premium Slim Fit T-Shirts","price":22.3,"description":"Slim-fitting style, contrast raglan long sleeve, three-button henley placket, light weight & soft fabric for breathable and comfortable wearing. And Solid stitched shirts with round neck made for durability and a great fit for casual fashion wear and diehard baseball fans. The Henley style round neckline includes a three-button placket.","image":"https://fakestoreapi.com/img/71-3HjGNDUL._AC_SY879._SX._UX._SY._UY_.jpg"},{"title":"Mens Casual Premium Slim Fit T-Shirts","price":22.3,"description":"Slim-fitting style, contrast raglan long sleeve, three-button henley placket, light weight & soft fabric for breathable and comfortable wearing. And Solid stitched shirts with round neck made for durability and a great fit for casual fashion wear and diehard baseball fans. The Henley style round neckline includes a three-button placket.","image":"https://fakestoreapi.com/img/71-3HjGNDUL._AC_SY879._SX._UX._SY._UY_.jpg"}]

class Cardmodal {
  Cardmodal({
      List<Data>? data,}){
    _data = data;
}

  Cardmodal.fromJson(dynamic json) {
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(Data.fromJson(v));
      });
    }
  }
  List<Data>? _data;
Cardmodal copyWith({  List<Data>? data,
}) => Cardmodal(  data: data ?? _data,
);
  List<Data>? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// title : "title"
/// price : "price"
/// description : "description"
/// image : "image"

class Data {
  Data({
      String? title, 
      String? price, 
      String? description, 
      String? image,}){
    _title = title;
    _price = price;
    _description = description;
    _image = image;
}

  Data.fromJson(dynamic json) {
    _title = json['title'];
    _price = json['price'];
    _description = json['description'];
    _image = json['image'];
  }
  String? _title;
  String? _price;
  String? _description;
  String? _image;
Data copyWith({  String? title,
  String? price,
  String? description,
  String? image,
}) => Data(  title: title ?? _title,
  price: price ?? _price,
  description: description ?? _description,
  image: image ?? _image,
);
  String? get title => _title;
  String? get price => _price;
  String? get description => _description;
  String? get image => _image;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = _title;
    map['price'] = _price;
    map['description'] = _description;
    map['image'] = _image;
    return map;
  }

}