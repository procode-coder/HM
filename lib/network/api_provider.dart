import 'dart:async';
import 'dart:convert';

import 'dart:typed_data';
import 'package:healthyme/network/custom_exception.dart';
import 'package:healthyme/network/log.dart';
import 'package:healthyme/services/locator.dart';
import 'package:healthyme/services/shared_preference_service.dart';
import 'package:http/http.dart' as http;

class ApiProvider {
  // LegacyApiProviderMethods

  final sharedPreferenceService = serviceLocator<SharedPreferenceService>();

  Future<dynamic> getData({
    required String endpoint,
    required String baseUrl,
    Map<String, dynamic>? body,
  }) async {
    var headers = <String, String>{};
    headers["Content-Type"] = "application/json";
    headers["Authorization"] =
        "Bearer ${await sharedPreferenceService.authToken}";

    try {
      dynamic responseJson;

      final response = await http.post(
        Uri.parse("$baseUrl/$endpoint"),
        headers: headers,
        body: json.encode(body),
      );

      if (response.statusCode == 400) {}

      if (response.statusCode != 200) return null;
      responseJson = _response(response);

      if (responseJson == null) return null;

      return responseJson;
    } on TimeoutException catch (_) {
      Log.error("ApiProvider get  failed with timeout");
      return null;
    } catch (e) {
      Log.error("ApiProvider get failed with error $e");
      return null;
    }
  }

  Future<dynamic> getDataList({
    required String endpoint,
    required String baseUrl,
    List<String>? body,
  }) async {
    await sharedPreferenceService.initialise();
    var headers = <String, String>{};
    headers["Content-Type"] = "application/json";
    headers["Authorization"] =
        "Bearer ${await sharedPreferenceService.authToken}";

    try {
      dynamic responseJson;

      final response = await http.post(
        Uri.parse("$baseUrl/$endpoint"),
        headers: headers,
        body: json.encode(body),
      );

      if (response.statusCode == 400) {}

      if (response.statusCode != 200) return null;
      responseJson = _response(response);

      if (responseJson == null) return null;

      return responseJson;
    } on TimeoutException catch (_) {
      Log.error("ApiProvider get  failed with timeout");
      return null;
    } catch (e) {
      Log.error("ApiProvider get failed with error $e");
      return null;
    }
  }

  dynamic _response(http.Response response) {
    switch (response.statusCode) {
      case 200:
        var responseJson = json.decode(response.body.toString());
        return responseJson;
      case 400:
        Log.error(response.body.toString());
        throw BadRequestException(response.body.toString());
      case 401:
      case 403:
        Log.error(response.body.toString());
        throw UnauthorisedException(response.body.toString());
      case 500:
      default:
        Log.error(response.body.toString());
        throw FetchDataException(
            'Error occured while Communication with Server with StatusCode : ${response.statusCode}');
    }
  }

  Future<dynamic> uploadFile({
    required String subUrl,
    required String baseUrl,
    required Uint8List file,
    Map<String, String>? body,
  }) async {
    await sharedPreferenceService.initialise();
    var headers = <String, String>{};
    headers["Content-Type"] = "multipart/form-data";
    headers["Authorization"] = "Bearer ${sharedPreferenceService.authToken}";

    try {
      dynamic responseJson;

      final request = http.MultipartRequest(
        'POST',
        Uri.parse("$baseUrl$subUrl"),
      );

      request.headers.addAll(headers);

      if (body != null) {
        request.fields.addAll(body);
      }

      request.files.add(http.MultipartFile.fromBytes(
        'file',
        file,
        filename: "file",
      ));

      final response = await request.send();

      if (response.statusCode == 200 || response.statusCode == 201) {
        responseJson = await response.stream.bytesToString();

        if (responseJson == null) return null;
        return responseJson;
      } else {
        // if (response.statusCode == 401) {
        //   // locator<AppRouter>().pushAndPopUntil(
        //     // SignInMobileView(),
        //     // predicate: (route) => route.data == null,
        //   );
        //   return null;
        // }
        return null;
      }
    } on TimeoutException catch (_) {
      Log.error("ApiProvider get  failed with timeout");
      return null;
    } catch (e) {
      Log.error("ApiProvider get failed with error $e");
      return null;
    }
  }
}
