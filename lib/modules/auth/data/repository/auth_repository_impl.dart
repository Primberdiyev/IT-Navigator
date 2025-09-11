import 'package:firebase_auth/firebase_auth.dart';
import 'package:it_navigator/modules/auth/auth.dart';
import 'package:it_navigator/modules/auth/data/data_sources/auth_remote_data_source.dart';

class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl({required this.remoteDataSource});
  final AuthRemoteDataSource remoteDataSource;

  @override
  Future<User?> login(LoginUseCaseParams params) {
    return remoteDataSource.signInWithEmailAndPassword(params);
  }

  @override
  Future<User?> signUp(String email, String password) {
    return remoteDataSource.signUpWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  @override
  User? getCurrentUser() {
    return remoteDataSource.getCurrentUser();
  }

  @override
  Future<void> signOut() {
    return remoteDataSource.signOut();
  }
}
