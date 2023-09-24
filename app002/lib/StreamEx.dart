import 'dart:async';
void main(){
  StreamController streamController = StreamController();
  for(var i=0 ; i<10 ; i++){
    streamController.sink.add(i);
  }
  streamController.stream.listen((value){
    print(value);
  });
}