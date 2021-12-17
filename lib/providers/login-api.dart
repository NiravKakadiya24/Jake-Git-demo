import 'dart:io';

import 'package:http/http.dart' as https;
import 'package:jack_wharton/utils/CustomException.dart';
import 'package:jack_wharton/utils/const.dart';

class GetData {
  https.Client httpClient = https.Client();

  Future<https.Response> getData(page) async {
    final url = '$baseUrl?page=${page}&per_page=${15}';

    var responseJson;
    final response = await this.httpClient.get(Uri.parse(url)).timeout(
      const Duration(seconds: 30),
      onTimeout: () {
        throw SocketException('Something went wrong');
      },
    );
    responseJson = _response(response);

    return responseJson;
  }
}

dynamic _response(https.Response response) {
  switch (response.statusCode) {
    case 200:
      return response;
    case 400:
    case 401:

    case 403:
      throw UnauthorisedException(response.body.toString());
    case 500:

    default:
      throw FetchDataException(
          'Error occured while Communication with Server with StatusCode :${response.statusCode}');
  }
}
