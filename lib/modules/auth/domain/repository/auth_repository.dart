// domain/repositories/auth_repository.dart
import 'package:firebase_auth/firebase_auth.dart';
import 'package:it_navigator/modules/auth/domain/domain.dart';

abstract class AuthRepository {
  Future<User?> login(LoginUseCaseParams params);

  Future<User?> signUp(String email, String password);

  User? getCurrentUser();

  Future<void> signOut();
}
