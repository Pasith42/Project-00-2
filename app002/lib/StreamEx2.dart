import 'dart:async';
void main(){
  StreamController streamController = StreamController();
    streamController.sink.add(20);
  streamController.sink.add('Hello World');
  streamController.sink.add(null);
  streamController.sink.add(["first","second"]);
  streamController.sink.add({"neymar":10});
  streamController.sink.close();
  streamController.stream.listen((value){
    print(value);
  },
  onError: (e) {
    print(e.toString());
  },
    cancelOnError: false,
    onDone: (){
    print('Stream have been finished');
    },
  );
}