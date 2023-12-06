import 'package:either_dart/either.dart';
import 'package:wtw_app/core/utils/exceptions.dart';

abstract class DatabaseRepository {
  Either<ApiException, String?> createId({required String collection});
  Future<Either<ApiException, String>> post({
    required Map<String, dynamic> document,
    required String table,
  });
  Future<Either<ApiException, Map<String, dynamic>>> get({
    required Map<String, dynamic>? document,
    required String table,
  });
  Future<Either<ApiException, String>> updateDocument({
    required String docId,
    required Map<String, dynamic> data,
    required String table,
  });
  Future<Either<ApiException, String>> deleteDocument({
    required String documentId,
    required String collection,
  });
}
