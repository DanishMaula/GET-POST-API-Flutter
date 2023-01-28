import 'package:dio/dio.dart';
import 'package:exrcise_api/models/model_user.dart';

class ServiceUser {
  Future<List<Data>?> getUser() async {
    var url = 'https://reqres.in/api/users?page=2';
    try {
      var response = await Dio().get(url,
          options: Options(
            headers: {
              'Content-Type': 'application/json',
            },
          ));

      final dataModel = UserModel.fromJson(response.data);
      if (response.statusCode == 200) {
        print('data berhasil di get -> ${response.data}');
      }
      return dataModel.data;
    } catch (e) {
      print('error -> $e');
    }
    return [];
  }

  Future postData(String nama, String job) async {
    var url = 'https://reqres.in/api/users';
    try {
      var response = await Dio().post(url, data: {"name": nama, "job": job});
      print('data sukses di post $response');
    } catch (e) {
      print('error -> $e');
    }
  }
}
