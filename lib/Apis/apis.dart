import 'package:http/http.dart';

class APIs {
  static Future getAllCourses() async {
    try {
      final url = Uri.parse("api.yesareem.in/api/uesr/getWebsiteCourses");
      final response = Client().get(url);
      return response;
    } catch (e) {
      return;
    }
  }
}
