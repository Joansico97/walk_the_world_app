import 'package:either_dart/either.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wtw_app/core/utils/exceptions.dart';
import 'package:wtw_app/data/providers/providers.dart';
import 'package:wtw_app/data/repositories/repositories.dart';

final databaseResource = Provider((ref) => DatabaseResource(ref));

class DatabaseResource implements DatabaseRepository {
  DatabaseResource(this.ref);
  final Ref ref;

  @override
  Either<ApiException, String?> createId({
    required String collection,
  }) {
    try {
      final collRef = ref.read(firebaseProvider).collection(collection);
      final docRef = collRef.doc();
      return Right(docRef.id);
    } on FirebaseException catch (e) {
      return Left(ApiException(200, e.message!));
    } catch (e) {
      return Left(ApiException(200, e.toString()));
    }
  }

  @override
  Future<Either<ApiException, String>> deleteDocument({
    required String documentId,
    required String collection,
  }) async {
    try {
      await ref
          .read(firebaseProvider)
          .collection(collection)
          .doc(documentId)
          .delete();
      return const Right('Document deleted');
    } on FirebaseException catch (e) {
      return Left(ApiException(200, e.message!));
    } catch (e) {
      return Left(ApiException(200, e.toString()));
    }
  }

  @override
  Future<Either<ApiException, Map<String, dynamic>>> get({
    required Map<String, dynamic>? document,
    required String table,
  }) async {
    try {
      if (document != null) {
        final response = await ref
            .read(firebaseProvider)
            .collection(table)
            .doc(document['id'])
            .get();

        if (response.exists) {
          return Right(response.data()!);
        } else {
          return Left(ApiException(200, 'Document does not exist'));
        }
      } else {
        final response =
            await ref.read(firebaseProvider).collection(table).get();
        if (response.docs.isNotEmpty) {
          final data = response.docs.map((e) => e.data()).toList();
          return Right({'data': data});
        } else {
          return Left(ApiException(200, 'Document does not exist'));
        }
      }
    } on FirebaseException catch (e) {
      return Left(ApiException(200, e.message!));
    } catch (e) {
      return Left(ApiException(200, e.toString()));
    }
  }

  @override
  Future<Either<ApiException, String>> post({
    required Map<String, dynamic> document,
    required String table,
  }) async {
    try {
      await ref
          .read(firebaseProvider)
          .collection(table)
          .doc(document['id'])
          .set(document);
      return const Right('Document created');
    } on FirebaseException catch (e) {
      return Left(ApiException(200, e.message!));
    } catch (e) {
      return Left(ApiException(200, e.toString()));
    }
  }

  @override
  Future<Either<ApiException, String>> updateDocument({
    required String docId,
    required Map<String, dynamic> data,
    required String table,
  }) async {
    try {
      await ref
          .read(firebaseProvider)
          .collection(table)
          .doc(docId)
          .update(data);
      return const Right('Document updated');
    } on FirebaseException catch (e) {
      return Left(ApiException(200, e.message!));
    } catch (e) {
      return Left(ApiException(200, e.toString()));
    }
  }
}
