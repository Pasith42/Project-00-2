
import 'dart:convert';

main(){
  var jsonString = '{"key1": "value1","key2":2,"key3":true}';
  var result = json.decode(jsonString);
  var dataModel  = DataModel(result['key1'],result['key2'],result['key3']);
  print(dataModel.key1);
  print(dataModel.key2);
  print(dataModel.key3);

  DataModel newDataModel = DataModel.parseFromJson(result);
  print(newDataModel.key1);
  print(newDataModel.key2);
  print(newDataModel.key3);
}
class DataModel {
  late String key1;
  late int key2;
  late bool key3;
  DataModel(this.key1, this.key2,this.key3);

  DataModel.parseFromJson(jsonParse){
    key1 = jsonParse['key1'];
    key2 = jsonParse['key2'];
    key3 = jsonParse['key3'];
  }
}

