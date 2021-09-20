class YearbookData {
  late Response response;

  YearbookData({required this.response});

  YearbookData.fromJson(Map<String, dynamic> json) {
    response = (json['response'] != null
        ? new Response.fromJson(json['response'])
        : null)!;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.response != null) {
      data['response'] = this.response.toJson();
    }
    return data;
  }
}

class Response {
  bool? status;
  String? message;
  late List<Data> data;

  Response({required this.status, required this.message, required this.data});

  Response.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data.add(new Data.fromJson(v));
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
  YearbookDescription? yearbookDescription;
  int? yearbookSortOrder;
  int? partnerBook;
  List<Pages>? pages;
  Null voucherCode;
  Null expiryDate;
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
      {required this.yearbookId,
      required this.userYearbookId,
      required this.yearbookName,
      required this.yearbookType,
      required this.settings,
      required this.createdDate,
      required this.lastModifiedDate,
      required this.productId,
      required this.status,
      required this.productWidth,
      required this.productHeight,
      required this.orderId,
      required this.ordersDate,
      required this.bookType,
      required this.yearbookDescription,
      required this.yearbookSortOrder,
      required this.partnerBook,
      required this.pages,
      required this.voucherCode,
      required this.expiryDate,
      required this.orderLink,
      required this.arrayImages,
      required this.orderStatus,
      required this.noPages,
      required this.formable,
      required this.flexible,
      required this.coverPage,
      required this.frontPageName,
      required this.backPageName,
      required this.imageData,
      required this.imgHttpThumb,
      required this.imgHttpLarge,
      required this.yearbookThumbnail,
      required this.imgHttpLargeFancybox,
      required this.thumbPageNameFancybox,
      required this.thumbPageName,
      required this.config});

  Data.fromJson(Map<String, dynamic> json) {
    yearbookId = json['yearbook_id'];
    userYearbookId = json['user_yearbook_id'];
    yearbookName = json['yearbook_name'];
    yearbookType = json['yearbook_type'];
    settings = (json['settings'] != null
        ? new Settings.fromJson(json['settings'])
        : null);
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
        ? new YearbookDescription.fromJson(json['yearbook_description'])
        : null);
    yearbookSortOrder = json['yearbook_sort_order'];
    partnerBook = json['partner_book'];
    if (json['pages'] != null) {
      pages = <Pages>[];
      json['pages'].forEach((v) {
        pages!.add(new Pages.fromJson(v));
      });
    }
    voucherCode = json['voucher_code'];
    expiryDate = json['expiry_date'];
    orderLink = json['order_link'];
    if (json['array_images'] != null) {
      arrayImages = <ArrayImages>[];
      json['array_images'].forEach((v) {
        arrayImages!.add(new ArrayImages.fromJson(v));
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
        imageData!.add(new ImageData.fromJson(v));
      });
    }
    imgHttpThumb = json['img_http_thumb'];
    imgHttpLarge = json['img_http_large'];
    yearbookThumbnail = json['yearbook_thumbnail'];
    imgHttpLargeFancybox = json['img_http_large_fancybox'];
    thumbPageNameFancybox = json['thumb_page_name_fancybox'];
    thumbPageName = json['thumb_page_name'];
    config =
        (json['config'] != null ? new Config.fromJson(json['config']) : null);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['yearbook_id'] = this.yearbookId;
    data['user_yearbook_id'] = this.userYearbookId;
    data['yearbook_name'] = this.yearbookName;
    data['yearbook_type'] = this.yearbookType;
    if (this.settings != null) {
      data['settings'] = this.settings!.toJson();
    }
    data['created_date'] = this.createdDate;
    data['last_modified_date'] = this.lastModifiedDate;
    data['product_id'] = this.productId;
    data['status'] = this.status;
    data['product_width'] = this.productWidth;
    data['product_height'] = this.productHeight;
    data['order_id'] = this.orderId;
    data['orders_date'] = this.ordersDate;
    data['book_type'] = this.bookType;
    if (this.yearbookDescription != null) {
      data['yearbook_description'] = this.yearbookDescription?.toJson();
    }
    data['yearbook_sort_order'] = this.yearbookSortOrder;
    data['partner_book'] = this.partnerBook;
    if (this.pages != null) {
      data['pages'] = this.pages!.map((v) => v.toJson()).toList();
    }
    data['voucher_code'] = this.voucherCode;
    data['expiry_date'] = this.expiryDate;
    data['order_link'] = this.orderLink;
    if (this.arrayImages != null) {
      data['array_images'] = this.arrayImages!.map((v) => v.toJson()).toList();
    }
    data['order_status'] = this.orderStatus;
    data['no_pages'] = this.noPages;
    data['formable'] = this.formable;
    data['flexible'] = this.flexible;
    data['cover_page'] = this.coverPage;
    data['front_page_name'] = this.frontPageName;
    data['back_page_name'] = this.backPageName;
    if (this.imageData != null) {
      data['image_data'] = this.imageData!.map((v) => v.toJson()).toList();
    }
    data['img_http_thumb'] = this.imgHttpThumb;
    data['img_http_large'] = this.imgHttpLarge;
    data['yearbook_thumbnail'] = this.yearbookThumbnail;
    data['img_http_large_fancybox'] = this.imgHttpLargeFancybox;
    data['thumb_page_name_fancybox'] = this.thumbPageNameFancybox;
    data['thumb_page_name'] = this.thumbPageName;
    if (this.config != null) {
      data['config'] = this.config!.toJson();
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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['calendar_layout'] = this.calendarLayout;
    return data;
  }
}

class YearbookDescription {
  String desc = "Null";
  String? size;
  String price = "Null";
  String? sInfo;

  YearbookDescription(
      {required this.desc,
      required this.size,
      required this.price,
      required this.sInfo});

  YearbookDescription.fromJson(Map<String, dynamic> json) {
    desc = json['Desc'];
    size = json['Size'];
    price = (json['Price'] != null? json['Price']: null);
    sInfo = json['sInfo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Desc'] = this.desc;
    data['Size'] = this.size;
    data['Price'] = this.price;
    data['sInfo'] = this.sInfo;
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
  Null templateDetails;
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
      required this.templateDetails,
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
    templateDetails = json['template_details'];
    studioMode = json['studio_mode'];
    pageName = json['page_name'];
    if (json['image_data'] != null) {
      imageData = <ImageData>[];
      json['image_data'].forEach((v) {
        imageData!.add(new ImageData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['yearbook_page_id'] = this.yearbookPageId;
    data['master_yearbook_page_id'] = this.masterYearbookPageId;
    data['page_index'] = this.pageIndex;
    data['page_editable'] = this.pageEditable;
    data['user_template_id'] = this.userTemplateId;
    data['master_template_id'] = this.masterTemplateId;
    data['status'] = this.status;
    data['approval_status'] = this.approvalStatus;
    data['created_date'] = this.createdDate;
    data['last_modified_date'] = this.lastModifiedDate;
    data['template_details'] = this.templateDetails;
    data['studio_mode'] = this.studioMode;
    data['page_name'] = this.pageName;
    if (this.imageData != null) {
      data['image_data'] = this.imageData!.map((v) => v.toJson()).toList();
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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['page_id'] = this.pageId;
    data['thumb'] = this.thumb;
    data['large'] = this.large;
    return data;
  }
}

class ArrayImages {
  String? thumb;
  String? large;
  String? pageName;

  ArrayImages(
      {required this.thumb, required this.large, required this.pageName});

  ArrayImages.fromJson(Map<String, dynamic> json) {
    thumb = json['thumb'];
    large = json['large'];
    pageName = json['page_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['thumb'] = this.thumb;
    data['large'] = this.large;
    data['page_name'] = this.pageName;
    return data;
  }
}

class Config {
  ImageQuality? imageQuality;

  Config({required this.imageQuality});

  Config.fromJson(Map<String, dynamic> json) {
    imageQuality = (json['imageQuality'] != null
        ? new ImageQuality.fromJson(json['imageQuality'])
        : null);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.imageQuality != null) {
      data['imageQuality'] = this.imageQuality!.toJson();
    }
    return data;
  }
}

class ImageQuality {
  bool? enabled;
  String? minDpi;
  String? maxDpi;

  ImageQuality(
      {required this.enabled, required this.minDpi, required this.maxDpi});

  ImageQuality.fromJson(Map<String, dynamic> json) {
    enabled = json['enabled'];
    minDpi = json['minDpi'];
    maxDpi = json['maxDpi'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['enabled'] = this.enabled;
    data['minDpi'] = this.minDpi;
    data['maxDpi'] = this.maxDpi;
    return data;
  }
}
