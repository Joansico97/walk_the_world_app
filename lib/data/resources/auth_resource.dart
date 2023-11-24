import 'package:either_dart/either.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wtw_app/core/utils/exceptions.dart';
import 'package:wtw_app/data/providers/providers.dart';

import 'package:wtw_app/data/repositories/repositories.dart';

final authResource = Provider((ref) => AuthResource(ref));

class AuthResource implements AuthRepository {
  const AuthResource(this.ref);

  final Ref ref;

  @override
  Either<ApiException, String?> getCurrentUser() {
    try {
      final user = ref.read(authFirebaseProvider).currentUser;
      if (user != null) {
        return Right(user.uid);
      } else {
        return const Right(null);
      }
    } on FirebaseException catch (e) {
      return Left(ApiException(200, e.message!));
    } catch (e) {
      return Left(ApiException(200, e.toString()));
    }
  }

  @override
  Future<Either<ApiException, String>> logIn({required String email, required String password}) async {
    try {
      await ref.read(authFirebaseProvider).signInWithEmailAndPassword(email: email, password: password);
      return const Right('');
    } on FirebaseException catch (e) {
      return Left(ApiException(200, e.message!));
    } catch (e) {
      return Left(ApiException(200, e.toString()));
    }
  }

  @override
  Future<Either<ApiException, void>> logOut() async {
    try {
      await ref.read(authFirebaseProvider).signOut();
      return const Right(null);
    } on FirebaseException catch (e) {
      return Left(ApiException(200, e.message!));
    } catch (e) {
      return Left(ApiException(200, e.toString()));
    }
  }

  @override
  Future<Either<ApiException, String>> register({required String email, required String password}) async {
    try {
      await ref.read(authFirebaseProvider).createUserWithEmailAndPassword(email: email, password: password);
      return const Right('');
    } on FirebaseException catch (e) {
      return Left(ApiException(200, e.message!));
    } catch (e) {
      return Left(ApiException(200, e.toString()));
    }
  }
}
