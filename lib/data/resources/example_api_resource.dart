import 'package:either_dart/either.dart';

import '../../helpers/helpers.dart';
import '../exceptions/exceptions.dart';
import '../repositories/repositories.dart';
import 'package:http/http.dart' as http;

class ExampleApiResource implements ExampleRepository {
  ExampleApiResource({
    required ApiClient client,
  }) : _client = client;

  // ignore: unused_field
  final ApiClient _client;

  @override
  Future<Either<ApiException, String>> exampleMethod({required String exmapleParam}) async {
    try {
      // Here we make a request to the API
      /* final response = await _client.get(
        'example',
        queryParameters: <String, String>{
          'exampleParam': exmapleParam,
        },
      ); */
      final response = await Future.delayed(
        const Duration(seconds: 1),
        () => http.Response('Example', 200),
      );

      if (response.statusCode == 200) {
        // Here we return the response from the API
        return Right(
          response.body,
        );
      }

      // Here we return a custom exception or a exception from the API
      return Left(ApiException(response.statusCode, response.body));
    } catch (e) {
      // Here we return a custom exception or a exception from an error made with the request
      return Left(
        ApiException(1000, 'Error: $e'),
      );
    }
  }
}
