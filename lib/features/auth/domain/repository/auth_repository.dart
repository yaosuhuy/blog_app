import 'package:blog_app/core/error/failures.dart';
import 'package:fpdart/fpdart.dart';
import 'package:blog_app/features/auth/domain/entities/user.dart';

abstract interface class AuthRepository {
  // Either là dùng fpdart, trả về 2 kiểu: Failure hoặc User
  Future<Either<Failure, User>> signUpWithEmailPassword({
    required String name,
    required String email,
    required String password,
  });

  Future<Either<Failure, User>> signInWithEmailPassword({
    required String email,
    required String password,
  });
}
