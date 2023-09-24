import 'dart:async';
void acceptOddOnly(StreamController<int> controller,int input){
  if(input % 2 == 1){
    controller.sink.add(input);
  } else{
    controller.sink.addError(StateError('$input is not Odd Number'));
  }
}
void main(){
  StreamController<int> streamController = StreamController<int>();
  for(var i=0 ; i<10 ; i++){
    acceptOddOnly(streamController, i);
  }
  streamController.close();
  streamController.stream.listen((value){
    print(value);
  },
  onError: (e) {
    print(e.toString());
    //ดึงข้อมูลเมื่อได้รับข้อมูลผิดพลาดจาก addError กับStateError
  },
  cancelOnError: false,
  onDone: () {
    print('Stream have been finished');
  },
  );
}