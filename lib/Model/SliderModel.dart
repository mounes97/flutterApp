class SliderModel {
  bool isEnabled;
  List<SliderData> data;
  Null successMessage;
  int statusCode;
  List<Null> errorList;

  SliderModel(
      {this.isEnabled,
        this.data,
        this.successMessage,
        this.statusCode,
        this.errorList});

  SliderModel.fromJson(Map<String, dynamic> json) {
    isEnabled = json['IsEnabled'];
    if (json['Data'] != null) {
      data = new List<SliderData>();
      json['Data'].forEach((v) {
        data.add(new SliderData.fromJson(v));
      });
    }
    successMessage = json['SuccessMessage'];
    statusCode = json['StatusCode'];
    if (json['ErrorList'] != null) {
      errorList = new List<Null>();
      json['ErrorList'].forEach((v) {
        // errorList.add(new Null.fromJson(v));
      });
    }
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['IsEnabled'] = this.isEnabled;
    if (this.data != null) {
      data['Data'] = this.data.map((v) => v.toJson()).toList();
    }
    data['SuccessMessage'] = this.successMessage;
    data['StatusCode'] = this.statusCode;
    if (this.errorList != null) {
      // data['ErrorList'] = this.errorList.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class SliderData {
  String imageUrl;
  String text;
  String link;
  int isProduct;
  String prodOrCatId;

  SliderData(
      {this.imageUrl,
        this.text,
        this.link,
        this.isProduct,
        this.prodOrCatId});

  SliderData.fromJson(Map<String, dynamic> json) {
    imageUrl = json['ImageUrl'];
    text = json['Text'];
    link = json['Link'];
    isProduct = json['IsProduct'];
    prodOrCatId = json['ProdOrCatId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ImageUrl'] = this.imageUrl;
    data['Text'] = this.text;
    data['Link'] = this.link;
    data['IsProduct'] = this.isProduct;
    data['ProdOrCatId'] = this.prodOrCatId;
    return data;
  }
}