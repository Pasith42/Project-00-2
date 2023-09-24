import 'dart:async';
void acceptOddOnly(StreamController<int> controller,int input){
  if(input % 2 == 1){
    controller.sink.add(input);
  } else{
    controller.sink.addError('$input is not Odd Number');
  }
}
void main(){
  StreamController<int> streamController = StreamController<int>();
  for(var i=0 ; i<10 ; i++){
    acceptOddOnly(streamController, i);
  }
  streamController.stream.listen((value){
    print(value);
  },
  onError: (e) {
    print(e.toString());
  },);
}