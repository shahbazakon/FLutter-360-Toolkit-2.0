class DataModel {
  String? name;
  dynamic email;
  String? mobileNumber;
  String? password;

  DataModel({this.name, this.email, this.mobileNumber, this.password});
}

List<DataModel> DataList() {
  List<DataModel> dataList = [];
  return dataList;
}
