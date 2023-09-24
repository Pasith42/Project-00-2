import 'package:http/http.dart';
class TestHttp {
  static Future<void> getPhoto() async {
    try {
      Response res = await get(
          Uri.https(
            'jsonplaceholder.typicode.com',
            '/photos/1',
          )
      );
      print(res.body);
      /*).then((value) {
        print(value.body);
      });
       */
    } catch (e) {
      print(e.toString());
    }
  }
}
