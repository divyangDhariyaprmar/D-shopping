/// data : [{"college":"Mens Casual Premium Slim Fit T-Shirts","city":22.3,"state":"hhhh","gav":"hhhh"}]

class Abcmodle {
  Abcmodle({
      List<Data>? data,}){
    _data = data;
}

  Abcmodle.fromJson(dynamic json) {
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(Data.fromJson(v));
      });
    }
  }
  List<Data>? _data;
Abcmodle copyWith({  List<Data>? data,
}) => Abcmodle(  data: data ?? _data,
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

/// college : "Mens Casual Premium Slim Fit T-Shirts"
/// city : 22.3
/// state : "hhhh"
/// gav : "hhhh"

class Data {
  Data({
      String? college, 
      num? city, 
      String? state, 
      String? gav,}){
    _college = college;
    _city = city;
    _state = state;
    _gav = gav;
}

  Data.fromJson(dynamic json) {
    _college = json['college'];
    _city = json['city'];
    _state = json['state'];
    _gav = json['gav'];
  }
  String? _college;
  num? _city;
  String? _state;
  String? _gav;
Data copyWith({  String? college,
  num? city,
  String? state,
  String? gav,
}) => Data(  college: college ?? _college,
  city: city ?? _city,
  state: state ?? _state,
  gav: gav ?? _gav,
);
  String? get college => _college;
  num? get city => _city;
  String? get state => _state;
  String? get gav => _gav;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['college'] = _college;
    map['city'] = _city;
    map['state'] = _state;
    map['gav'] = _gav;
    return map;
  }

}