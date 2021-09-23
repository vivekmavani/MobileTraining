import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class User {
  Response? response;

  User({this.response});

  User.fromJson(Map<String, dynamic> json) {
    response = json['response'] != null
        ? Response.fromJson(json['response'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (response != null) {
      data['response'] = response!.toJson();
    }
    return data;
  }


}

class Response {
  bool? status;
  String? message;
  late List<Data> data;

  Response({this.status, this.message, required this.data});

  Response.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data.add(Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['message'] = message;
    data['data'] = this.data.map((v) => v.toJson()).toList();
    return data;
  }
}

class Data {
  int? yearbookId;
  int? userYearbookId;
  late String yearbookName;
  String? yearbookType;
  Settings? settings;
  String? createdDate;
  String? lastModifiedDate;
  int? productId;
  int? status;
  double? productWidth;
  double? productHeight;
  int? orderId;
  String? ordersDate;
  int? bookType;
  late YearbookDescription yearbookDescription;
  int? yearbookSortOrder;
  int? partnerBook;
  late List<Pages> pages;
  String? orderLink;
  List<ArrayImages>? arrayImages;
  int? orderStatus;
  int? noPages;
  int? formable;
  int? flexible;
  String? coverPage;
  String? frontPageName;
  String? backPageName;
  List<ImageData>? imageData;
  late String imgHttpThumb;
  String? imgHttpLarge;
  bool? yearbookThumbnail;
  String? imgHttpLargeFancybox;
  String? thumbPageNameFancybox;
  String? thumbPageName;
  Config? config;

  Data(
      {this.yearbookId,
        this.userYearbookId,
        required this.yearbookName,
        this.yearbookType,
        this.settings,
        this.createdDate,
        this.lastModifiedDate,
        this.productId,
        this.status,
        this.productWidth,
        this.productHeight,
        this.orderId,
        this.ordersDate,
        this.bookType,
        required this.yearbookDescription,
        this.yearbookSortOrder,
        this.partnerBook,
        required this.pages,
        this.orderLink,
        this.arrayImages,
        this.orderStatus,
        this.noPages,
        this.formable,
        this.flexible,
        this.coverPage,
        this.frontPageName,
        this.backPageName,
        this.imageData,
        required this.imgHttpThumb,
        this.imgHttpLarge,
        this.yearbookThumbnail,
        this.imgHttpLargeFancybox,
        this.thumbPageNameFancybox,
        this.thumbPageName,
        this.config});

  Data.fromJson(Map<String, dynamic> json) {
    yearbookId = json['yearbook_id'];
    userYearbookId = json['user_yearbook_id'];
    yearbookName = json['yearbook_name'];
    yearbookType = json['yearbook_type'];
    settings = json['settings'] != null
        ? Settings.fromJson(json['settings'])
        : null;
    createdDate = json['created_date'];
    lastModifiedDate = json['last_modified_date'];
    productId = json['product_id'];
    status = json['status'];
    productWidth = json['product_width'];
    productHeight = json['product_height'];
    orderId = json['order_id'];
    ordersDate = json['orders_date'];
    bookType = json['book_type'];
    yearbookDescription = (json['yearbook_description'] != null
        ? YearbookDescription.fromJson(json['yearbook_description'])
        : YearbookDescription(desc: "", size: "", price: "", sInfo: ""));
    yearbookSortOrder = json['yearbook_sort_order'];
    partnerBook = json['partner_book'];
    if (json['pages'] != null) {
      pages = <Pages>[];
      json['pages'].forEach((v) {
        pages.add(Pages.fromJson(v));
      });
    }
    orderLink = json['order_link'];
    if (json['array_images'] != null) {
      arrayImages = <ArrayImages>[];
      json['array_images'].forEach((v) {
        arrayImages!.add(ArrayImages.fromJson(v));
      });
    }
    orderStatus = json['order_status'];
    noPages = json['no_pages'];
    formable = json['formable'];
    flexible = json['flexible'];
    coverPage = json['cover_page'];
    frontPageName = json['front_page_name'];
    backPageName = json['back_page_name'];
    if (json['image_data'] != null) {
      imageData = <ImageData>[];
      json['image_data'].forEach((v) {
        imageData!.add(ImageData.fromJson(v));
      });
    }
    imgHttpThumb = json['img_http_thumb'];
    imgHttpLarge = json['img_http_large'];
    yearbookThumbnail = json['yearbook_thumbnail'];
    imgHttpLargeFancybox = json['img_http_large_fancybox'];
    thumbPageNameFancybox = json['thumb_page_name_fancybox'];
    thumbPageName = json['thumb_page_name'];
    config =
    json['config'] != null ? Config.fromJson(json['config']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['yearbook_id'] = yearbookId;
    data['user_yearbook_id'] = userYearbookId;
    data['yearbook_name'] = yearbookName;
    data['yearbook_type'] = yearbookType;
    if (settings != null) {
      data['settings'] = settings!.toJson();
    }
    data['created_date'] = createdDate;
    data['last_modified_date'] = lastModifiedDate;
    data['product_id'] = productId;
    data['status'] = status;
    data['product_width'] = productWidth;
    data['product_height'] = productHeight;
    data['order_id'] = orderId;
    data['orders_date'] = ordersDate;
    data['book_type'] = bookType;
    if (yearbookDescription != null) {
      data['yearbook_description'] = yearbookDescription.toJson();
    }
    data['yearbook_sort_order'] = yearbookSortOrder;
    data['partner_book'] = partnerBook;
    if (pages != null) {
      data['pages'] = pages.map((v) => v.toJson()).toList();
    }
    data['order_link'] = orderLink;
    if (arrayImages != null) {
      data['array_images'] = arrayImages!.map((v) => v.toJson()).toList();
    }
    data['order_status'] = orderStatus;
    data['no_pages'] = noPages;
    data['formable'] = formable;
    data['flexible'] = flexible;
    data['cover_page'] = coverPage;
    data['front_page_name'] = frontPageName;
    data['back_page_name'] = backPageName;
    if (imageData != null) {
      data['image_data'] = imageData!.map((v) => v.toJson()).toList();
    }
    data['img_http_thumb'] = imgHttpThumb;
    data['img_http_large'] = imgHttpLarge;
    data['yearbook_thumbnail'] = yearbookThumbnail;
    data['img_http_large_fancybox'] = imgHttpLargeFancybox;
    data['thumb_page_name_fancybox'] = thumbPageNameFancybox;
    data['thumb_page_name'] = thumbPageName;
    if (config != null) {
      data['config'] = config!.toJson();
    }
    return data;
  }
}

class Settings {
  String? calendarLayout;

  Settings({required this.calendarLayout});

  Settings.fromJson(Map<String, dynamic> json) {
    calendarLayout = json['calendar_layout'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['calendar_layout'] = calendarLayout;
    return data;
  }
}

class YearbookDescription {
  late String desc;
  String? size;
  late String price;
  String? sInfo;

  YearbookDescription({required this.desc, required this.size, required this.price, required this.sInfo});

  YearbookDescription.fromJson(Map<String, dynamic> json) {
    desc = json['Desc'];
    size = json['Size'];
    price = json['Price'];
    sInfo = json['sInfo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['Desc'] = desc;
    data['Size'] = size;
    data['Price'] = price;
    data['sInfo'] = sInfo;
    return data;
  }
}

class Pages {
  int? yearbookPageId;
  int? masterYearbookPageId;
  int? pageIndex;
  int? pageEditable;
  int? userTemplateId;
  int? masterTemplateId;
  int? status;
  int? approvalStatus;
  String? createdDate;
  String? lastModifiedDate;
  String? studioMode;
  String? pageName;
  List<ImageData>? imageData;

  Pages(
      {required this.yearbookPageId,
        required this.masterYearbookPageId,
        required this.pageIndex,
        required this.pageEditable,
        required this.userTemplateId,
        required this.masterTemplateId,
        required this.status,
        required this.approvalStatus,
        required this.createdDate,
        required this.lastModifiedDate,
        required this.studioMode,
        required this.pageName,
        required this.imageData});

  Pages.fromJson(Map<String, dynamic> json) {
    yearbookPageId = json['yearbook_page_id'];
    masterYearbookPageId = json['master_yearbook_page_id'];
    pageIndex = json['page_index'];
    pageEditable = json['page_editable'];
    userTemplateId = json['user_template_id'];
    masterTemplateId = json['master_template_id'];
    status = json['status'];
    approvalStatus = json['approval_status'];
    createdDate = json['created_date'];
    lastModifiedDate = json['last_modified_date'];
    studioMode = json['studio_mode'];
    pageName = json['page_name'];
    if (json['image_data'] != null) {
      imageData = <ImageData>[];
      json['image_data'].forEach((v) {
        imageData!.add(ImageData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['yearbook_page_id'] = yearbookPageId;
    data['master_yearbook_page_id'] = masterYearbookPageId;
    data['page_index'] = pageIndex;
    data['page_editable'] = pageEditable;
    data['user_template_id'] = userTemplateId;
    data['master_template_id'] = masterTemplateId;
    data['status'] = status;
    data['approval_status'] = approvalStatus;
    data['created_date'] = createdDate;
    data['last_modified_date'] = lastModifiedDate;
    data['studio_mode'] = studioMode;
    data['page_name'] = pageName;
    if (imageData != null) {
      data['image_data'] = imageData!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ImageData {
  String? pageId;
  String? thumb;
  String? large;

  ImageData({required this.pageId, required this.thumb, required this.large});

  ImageData.fromJson(Map<String, dynamic> json) {
    pageId = json['page_id'];
    thumb = json['thumb'];
    large = json['large'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['page_id'] = pageId;
    data['thumb'] = thumb;
    data['large'] = large;
    return data;
  }
}

class ArrayImages {
  String? thumb;
  String? large;
  String? pageName;

  ArrayImages({required this.thumb, required this.large, required this.pageName});

  ArrayImages.fromJson(Map<String, dynamic> json) {
    thumb = json['thumb'];
    large = json['large'];
    pageName = json['page_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['thumb'] = thumb;
    data['large'] = large;
    data['page_name'] = pageName;
    return data;
  }
}

class Config {
  ImageQuality? imageQuality;

  Config({required this.imageQuality});

  Config.fromJson(Map<String, dynamic> json) {
    imageQuality = (json['imageQuality'] != null
        ? ImageQuality.fromJson(json['imageQuality'])
        : null)!;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (imageQuality != null) {
      data['imageQuality'] = imageQuality!.toJson();
    }
    return data;
  }
}

class ImageQuality {
  bool? enabled;
  String? minDpi;
  String? maxDpi;

  ImageQuality({required this.enabled, required this.minDpi, required this.maxDpi});

  ImageQuality.fromJson(Map<String, dynamic> json) {
    enabled = json['enabled'];
    minDpi = json['minDpi'];
    maxDpi = json['maxDpi'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['enabled'] = enabled;
    data['minDpi'] = minDpi;
    data['maxDpi'] = maxDpi;
    return data;
  }
}
