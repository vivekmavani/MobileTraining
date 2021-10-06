
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

class Data {
  final  String yearbook_name;
  final  YearbookDescription yearbook_description;
  final  String img_http_thumb;
  final  String yearbook_banner;
  final  String app_preview_description;
  final  List<Pages> pages;
  Data(
      {required this.yearbook_name,
      required this.yearbook_description,
      required this.img_http_thumb,
      required this.yearbook_banner,
      required this.app_preview_description,
      required this.pages});
  /* Datas.fromJson(Map<String, dynamic> json) {
        json["yearbook_name"] ?? "";
        json["yearbook_description"] != null
            ? YearbookDescription.fromJson(json["yearbook_description"])
            : YearbookDescription(Desc: "", Price: "");
        json["img_http_thumb"] ?? "";
        json["yearbook_banner"] ?? "";
        json["app_preview_description"] ?? "";
        if (json['pages'] != null) {
          pages = [];
          json['pages'].forEach((v) {
            pages.add(Pagesofyearbook.fromJson(v));
            print(Pagesofyearbook.fromJson(v));
          });
        }
  }*/
  factory Data.fromJson(Map<String, dynamic> json){
      return  Data(
        img_http_thumb : json["img_http_thumb"] ?? "",
        yearbook_banner :  json["yearbook_banner"] ?? "",
      app_preview_description : json["app_preview_description"] ?? "",
        yearbook_name: json["yearbook_name"] ?? "",
        yearbook_description: json["yearbook_description"]!=null?YearbookDescription.fromJson(json["yearbook_description"]):YearbookDescription(desc: "",price: "",size:"",sInfo: ""),
        pages:  List<Pages>.from(json["pages"].map((x) => Pages.fromJson(x))),
      );
  }
   Map<String, dynamic> toJson() {
     final Map<String, dynamic> data = Map<String, dynamic>();
     data['yearbook_name'] = this.yearbook_name;
     data['yearbook_description'] = this.yearbook_description;
     data['img_http_thumb'] = this.img_http_thumb;
     if (this.pages != null) {
       data['pages'] = this.pages.map((v) => v.toJson()).toList();
     }
     return data;
   }
}

class YearbookDescription {
    String desc;
    String size;
    String price;
    String sInfo;

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
}

class Pages {
   int? master_yearbook_page_id;
   late int page_index;
   int? page_editable;
   int? master_template_id;
   int? width;
   int? height;
 late  String page_name;
  late List<ImageData> image_data;

  Pages({required this.master_yearbook_page_id,
    required this.page_index,
    required this.page_editable,
    required this.master_template_id,
    required this.width,
    required this.height,
    required this.page_name,
    required this.image_data});

  Pages.fromJson(Map<String, dynamic> json) {
    master_yearbook_page_id = json['master_yearbook_page_id'];
    page_index = json['page_index'];
    page_editable = json['page_editable'];
    master_template_id = json['master_template_id'];
    if (json['image_data'] != null) {
      image_data = <ImageData>[];
      json['image_data'].forEach((v) {
        image_data.add(new ImageData.fromJson(v));
      });
    }
    width = json['width'];
    height = json['height'];
    page_name = json['page_name'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['master_yearbook_page_id'] = this.master_yearbook_page_id;
    data['page_index'] = this.page_index;
    data['page_editable'] = this.page_editable;
    data['master_template_id'] = this.master_template_id;
    if (this.image_data != null) {
      data['image_data'] = this.image_data.map((v) => v.toJson()).toList();
    }
    data['width'] = this.width;
    data['height'] = this.height;
    data['page_name'] = this.page_name;
    return data;
  }
/*  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['master_yearbook_page_id'] = this.master_yearbook_page_id;
    data['page_index'] = this.page_index;
    data['page_editable'] = this.page_editable;
    data['master_template_id'] = this.master_template_id;
    data['width'] = this.width;
    data['height'] = this.height;
    data['page_name'] = this.page_name;
    if (this.image_data != null) {
      data['image_data'] = this.image_data.map((v) => v.toJson()).toList();
    }
    return data;
  }*/
}

class ImageData {
  final String page_id;
  final String thumb;
  final String large;

  ImageData({required this.page_id, required this.thumb, required this.large});

  factory ImageData.fromJson(Map<String, dynamic> json) {
    return ImageData(
      page_id: json["page_id"] ?? "",
      thumb: json["thumb"] ?? "",
      large: json["large"] ?? "",
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['page_id'] = this.page_id;
    data['thumb'] = this.thumb;
    data['large'] = this.large;
    return data;
  }
}