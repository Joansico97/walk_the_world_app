import 'dart:io';

import 'package:http/http.dart' as http;

class ApiClient {
  ApiClient({
    required String baseUrl,
  }) : _base = baseUrl;

  final String _base;

  Future<http.Response> get(
    String path, {
    Map<String, String>? queryParameters,
    Map<String, String>? headers,
  }) async {
    final uri = Uri.parse('$_base/$path').replace(
      queryParameters: queryParameters,
    );

    final response = await http.get(uri, headers: headers);

    return response;
  }

  Future<http.Response> post(
    String path, {
    Map<String, String>? queryParameters,
    Map<String, String>? headers,
    Object? body,
  }) async {
    final uri = Uri.parse('$_base/$path').replace(
      queryParameters: queryParameters,
    );

    final response = await http.post(
      uri,
      headers: headers ?? <String, String>{}
        ..addContentTypeJson(),
      body: body,
    );

    return response;
  }

  Future<http.Response> put(
    String path, {
    Map<String, String>? queryParameters,
    Map<String, String>? headers,
    Object? body,
  }) async {
    final uri = Uri.parse('$_base/$path').replace(
      queryParameters: queryParameters,
    );

    final response = await http.put(
      uri,
      headers: headers,
      body: body,
    );

    return response;
  }

  Future<http.Response> multipart(
    String path, {
    Map<String, String>? queryParameters,
    required String fieldName,
    required String token,
    required File file,
    required String filename,
  }) async {
    final uri = Uri.parse('$_base/$path').replace(
      queryParameters: queryParameters,
    );
    Map<String, String> headers = {
      "Authorization": token,
      "Content-type": "multipart/form-data",
    };

    final request = http.MultipartRequest(
      'POST',
      uri,
    );

    request.files.add(
      http.MultipartFile(
        fieldName,
        file.readAsBytes().asStream(),
        file.lengthSync(),
        filename: filename,
      ),
    );

    request.headers.addAll(headers);

    final response = await request.send();

    final responseString = await response.stream.bytesToString();

    return http.Response(responseString, response.statusCode);
  }
}

extension on Map<String, String> {
  void addContentTypeJson() {
    addAll({
      'Content-Type': 'application/json',
    });
  }
}
