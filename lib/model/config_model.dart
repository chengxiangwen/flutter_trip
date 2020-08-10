class ConfigModel {
  final String searchUrl;

  ConfigModel({this.searchUrl});

  factory ConfigModel.fromJson(Map<String, dynamic> json) {
    return ConfigModel(searchUrl: json['searchUrl']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["searchUrl"] = searchUrl;
    return data;
  }
}
