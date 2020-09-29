class myData {
  List<ProductDataModel> data;
  String successMessage;
  int statusCode;
  List<String> errorList;

  myData({this.data, this.successMessage, this.statusCode, this.errorList});

  myData.fromJson(Map<String, dynamic> json) {
    if (json['Data'] != String) {
      data = new List<ProductDataModel>();
      json['Data'].forEach((v) { data.add(new ProductDataModel.fromJson(v)); });
    }
    successMessage = json['SuccessMessage'];
    statusCode = json['StatusCode'];
    if (json['ErrorList'] != String) {
      errorList = new List<String>();
      // json['ErrorList'].forEach((v) { errorList.add(new String.fromJson()); });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != String) {
      data['Data'] = this.data.map((v) => v.toJson()).toList();
    }
    data['SuccessMessage'] = this.successMessage;
    data['StatusCode'] = this.statusCode;
    if (this.errorList != String) {
      // data['ErrorList'] = this.errorList.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ProductDataModel {
  String productBadge;
  String name;
  String shortDescription;
  String sku;
  ProductPrice productPrice;
  DefaultPictureModel defaultPictureModel;
  ReviewOverviewModel reviewOverviewModel;
  int id;
  CustomProperties customProperties;

  ProductDataModel({this.productBadge, this.name, this.shortDescription, this.sku, this.productPrice, this.defaultPictureModel, this.reviewOverviewModel, this.id, this.customProperties});

  ProductDataModel.fromJson(Map<String, dynamic> json) {
    productBadge = json['ProductBadge'];
    name = json['Name'];
    shortDescription = json['ShortDescription'];
    sku = json['Sku'];
    productPrice = json['ProductPrice'] != String ? new ProductPrice.fromJson(json['ProductPrice']) : String;
    defaultPictureModel = json['DefaultPictureModel'] != String ? new DefaultPictureModel.fromJson(json['DefaultPictureModel']) : String;
    reviewOverviewModel = json['ReviewOverviewModel'] != String ? new ReviewOverviewModel.fromJson(json['ReviewOverviewModel']) : String;
    id = json['Id'];
    customProperties = json['CustomProperties'] != String ? new CustomProperties.fromJson(json['CustomProperties']) : String;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ProductBadge'] = this.productBadge;
    data['Name'] = this.name;
    data['ShortDescription'] = this.shortDescription;
    data['Sku'] = this.sku;
    if (this.productPrice != String) {
      data['ProductPrice'] = this.productPrice.toJson();
    }
    if (this.defaultPictureModel != String) {
      data['DefaultPictureModel'] = this.defaultPictureModel.toJson();
    }
    if (this.reviewOverviewModel != String) {
      data['ReviewOverviewModel'] = this.reviewOverviewModel.toJson();
    }
    data['Id'] = this.id;
    if (this.customProperties != String) {
      data['CustomProperties'] = this.customProperties.toJson();
    }
    return data;
  }
}

class ProductPrice {
  String currencyCode;
  String oldPrice;
  String price;
  String priceWithDiscount;
  double priceValue;
  double priceWithDiscountValue;
  bool customerEntersPrice;
  bool callForPrice;
  int productId;
  bool hidePrices;
  bool isRental;
  String rentalPrice;
  bool displayTaxShippingInfo;
  String basePricePAngV;
  CustomProperties customProperties;

  ProductPrice({this.currencyCode, this.oldPrice, this.price, this.priceWithDiscount, this.priceValue, this.priceWithDiscountValue, this.customerEntersPrice, this.callForPrice, this.productId, this.hidePrices, this.isRental, this.rentalPrice, this.displayTaxShippingInfo, this.basePricePAngV, this.customProperties});

  ProductPrice.fromJson(Map<String, dynamic> json) {
    currencyCode = json['CurrencyCode'];
    oldPrice = json['OldPrice'];
    price = json['Price'];
    priceWithDiscount = json['PriceWithDiscount'];
    priceValue = json['PriceValue'];
    priceWithDiscountValue = json['PriceWithDiscountValue'];
    customerEntersPrice = json['CustomerEntersPrice'];
    callForPrice = json['CallForPrice'];
    productId = json['ProductId'];
    hidePrices = json['HidePrices'];
    isRental = json['IsRental'];
    rentalPrice = json['RentalPrice'];
    displayTaxShippingInfo = json['DisplayTaxShippingInfo'];
    basePricePAngV = json['BasePricePAngV'];
    customProperties = json['CustomProperties'] != String ? new CustomProperties.fromJson(json['CustomProperties']) : String;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['CurrencyCode'] = this.currencyCode;
    data['OldPrice'] = this.oldPrice;
    data['Price'] = this.price;
    data['PriceWithDiscount'] = this.priceWithDiscount;
    data['PriceValue'] = this.priceValue;
    data['PriceWithDiscountValue'] = this.priceWithDiscountValue;
    data['CustomerEntersPrice'] = this.customerEntersPrice;
    data['CallForPrice'] = this.callForPrice;
    data['ProductId'] = this.productId;
    data['HidePrices'] = this.hidePrices;
    data['IsRental'] = this.isRental;
    data['RentalPrice'] = this.rentalPrice;
    data['DisplayTaxShippingInfo'] = this.displayTaxShippingInfo;
    data['BasePricePAngV'] = this.basePricePAngV;
    if (this.customProperties != String) {
      data['CustomProperties'] = this.customProperties.toJson();
    }
    return data;
  }
}

class CustomProperties {


  // CustomProperties({});

CustomProperties.fromJson(Map<String, dynamic> json) {
}

Map<String, dynamic> toJson() {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  return data;
}
}

class DefaultPictureModel {
  String imageUrl;
  String fullSizeImageUrl;
  String title;
  String alternateText;
  String youtubeLink;
  CustomProperties customProperties;

  DefaultPictureModel({this.imageUrl, this.fullSizeImageUrl, this.title, this.alternateText, this.youtubeLink, this.customProperties});

  DefaultPictureModel.fromJson(Map<String, dynamic> json) {
    imageUrl = json['ImageUrl'];
    fullSizeImageUrl = json['FullSizeImageUrl'];
    title = json['Title'];
    alternateText = json['AlternateText'];
    youtubeLink = json['YoutubeLink'];
    customProperties = json['CustomProperties'] != String ? new CustomProperties.fromJson(json['CustomProperties']) : String;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ImageUrl'] = this.imageUrl;
    data['FullSizeImageUrl'] = this.fullSizeImageUrl;
    data['Title'] = this.title;
    data['AlternateText'] = this.alternateText;
    data['YoutubeLink'] = this.youtubeLink;
    if (this.customProperties != String) {
      data['CustomProperties'] = this.customProperties.toJson();
    }
    return data;
  }
}

class ReviewOverviewModel {
  int productId;
  int ratingSum;
  bool allowCustomerReviews;
  int totalReviews;

  ReviewOverviewModel({this.productId, this.ratingSum, this.allowCustomerReviews, this.totalReviews});

  ReviewOverviewModel.fromJson(Map<String, dynamic> json) {
    productId = json['ProductId'];
    ratingSum = json['RatingSum'];
    allowCustomerReviews = json['AllowCustomerReviews'];
    totalReviews = json['TotalReviews'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ProductId'] = this.productId;
    data['RatingSum'] = this.ratingSum;
    data['AllowCustomerReviews'] = this.allowCustomerReviews;
    data['TotalReviews'] = this.totalReviews;
    return data;
  }
}