import 'package:either_dart/either.dart';

import '../exceptions/exceptions.dart';

abstract class ExampleRepository {
  // You can change the return type to a model class
  Future<Either<ApiException, String>> exampleMethod({
    required String exmapleParam,
  });
}
