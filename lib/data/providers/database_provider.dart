import 'package:either_dart/either.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wtw_app/core/utils/exceptions.dart';
import 'package:wtw_app/data/repositories/repositories.dart';
import 'package:wtw_app/data/resources/resources.dart';

final databaseProvider = Provider(
    (ref) => _DatabaseProvider(databaseResource: ref.read(databaseResource)));

class _DatabaseProvider implements DatabaseRepository {
  _DatabaseProvider({required DatabaseResource databaseResource})
      : _databaseResource = databaseResource;

  final DatabaseResource _databaseResource;

  @override
  Either<ApiException, String?> createId({required String collection}) =>
      _databaseResource.createId(collection: collection);

  @override
  Future<Either<ApiException, String>> deleteDocument(
          {required String documentId, required String collection}) =>
      _databaseResource.deleteDocument(
          documentId: documentId, collection: collection);

  @override
  Future<Either<ApiException, Map<String, dynamic>>> get(
          {required Map<String, dynamic>? document, required String table}) =>
      _databaseResource.get(document: document, table: table);

  @override
  Future<Either<ApiException, String>> post(
          {required Map<String, dynamic> document, required String table}) =>
      _databaseResource.post(document: document, table: table);

  @override
  Future<Either<ApiException, String>> updateDocument(
          {required String docId,
          required Map<String, dynamic> data,
          required String table}) =>
      _databaseResource.updateDocument(docId: docId, data: data, table: table);
}
