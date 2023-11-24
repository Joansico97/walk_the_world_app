import 'package:either_dart/either.dart';
import 'package:wtw_app/core/utils/utils.dart';

abstract class AuthRepository {
  Either<ApiException, String?> getCurrentUser();
  Future<Either<ApiException, String>> register({
    required String email,
    required String password,
  });
  Future<Either<ApiException, String>> logIn({
    required String email,
    required String password,
  });
  Future<Either<ApiException, void>> logOut();
}
