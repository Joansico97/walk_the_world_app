import 'package:either_dart/either.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wtw_app/core/utils/exceptions.dart';
import 'package:wtw_app/data/repositories/repositories.dart';
import 'package:wtw_app/data/resources/resources.dart';

final authProvider =
    Provider((ref) => _AuthProvider(authResource: ref.read(authResource)));

class _AuthProvider implements AuthRepository {
  _AuthProvider({required AuthResource authResource})
      : _authResource = authResource;

  final AuthResource _authResource;
  @override
  Either<ApiException, String?> getCurrentUser() =>
      _authResource.getCurrentUser();

  @override
  Future<Either<ApiException, String>> logIn(
          {required String email, required String password}) =>
      _authResource.logIn(email: email, password: password);

  @override
  Future<Either<ApiException, void>> logOut() => _authResource.logOut();

  @override
  Future<Either<ApiException, String>> register(
          {required String email, required String password}) =>
      _authResource.register(email: email, password: password);
}
