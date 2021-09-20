class Album {
  Responses? response;

  Album({required this.response});

 Album.fromJson(Map<String, dynamic> json) {
  response = json['response'] != null
      ? Responses.fromJson(json['response'])
      : null;
}

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.response != null) {
      data['response'] = this.response!.toJson();
    }
    return data;
  }
}

class Responses {
  bool? status;
  String ? message;
  late List<Data> data;

  Responses({required this.status,required this.message, required this.data});

  Responses.fromJson(Map<String, dynamic> json) {
    status = json['status'] ?? '';
    message = json['message'] ?? '';
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data.add(Data.fromJson(v));
        print(Data.fromJson(v));
      });
    }
  }
  

  Map<String, dynamic> toJson() {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['status'] = this.status;
  data['message'] = this.message;
  if (this.data != null) {
    data['data'] = this.data.map((v) => v.toJson()).toList();
  }
  return data;
}
}

class Data{
  final String yearbook_name;
  final YearbookDescription yearbook_description;
  final String img_http_thumb;

  Data({required this.yearbook_name, required this.yearbook_description, required this.img_http_thumb});


  factory Data.fromJson(Map<String, dynamic> json){
    if (json.isNotEmpty){
      return  Data(
        yearbook_name: json["yearbook_name"] ?? "",
        yearbook_description: json["yearbook_description"]!=null?YearbookDescription.fromJson(json["yearbook_description"]):YearbookDescription(desc: "",price: "",size: "",sInfo: ""),
        img_http_thumb: json["img_http_thumb"]?? "",
      );
    }else{
      return Data(yearbook_name: "", yearbook_description: YearbookDescription(desc: "",price: "",size: "",sInfo: ""), img_http_thumb: "");
    }
  }

  Map<String, dynamic> toJson() => {
    "yearbook_name": yearbook_name,
    "yearbook_description": yearbook_description == null ? null : yearbook_description.toJson(),
    "img_http_thumb": img_http_thumb,
  };

}

class YearbookDescription {
  final String desc;
  final String size;
  final String price;
  final String sInfo;

  YearbookDescription({required this.desc,required this.size, required this.price, required this.sInfo});

  factory YearbookDescription.fromJson(Map<String, dynamic> json) =>
      YearbookDescription(
        desc: json["Desc"] ?? "",
        size: json["Size"]?? "",
        price: json["Price"] ?? "",
        sInfo: json["sInfo"]?? "",
      );
  Map<String, dynamic> toJson() => {
    "Desc": desc,
    "Price": price,
    "Size" :size,
    "sInfo" : sInfo,
  };

  /* YearbookDescription.fromJson(Map<String, dynamic> json) {

    desc = json['Desc'] ?? '';
    size = json['Size'] ?? '';
    price = json['Price'] ?? '';
    sInfo = json['sInfo'] ?? '';
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Desc'] = desc;
    data['Size'] = size;
    data['Price'] = price;
    data['sInfo'] = sInfo;
    return data;
  }*/
}
