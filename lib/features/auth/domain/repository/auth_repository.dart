import 'package:blog_app/core/error/failures.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class AuthRepository {
  // Either là dùng fpdart, trả về 2 kiểu: Failure hoặc String (uid)
  Future<Either<Failure, String>> signUpWithEmailPassword({
    required String name,
    required String email,
    required String password,
  });

  Future<Either<Failure, String>> signInWithEmailPassword({
    required String name,
    required String email,
    required String password,
  });
}