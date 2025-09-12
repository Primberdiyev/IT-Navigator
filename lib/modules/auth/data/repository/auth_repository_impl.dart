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
  Future<void> signUp(SignUpUseCaseParams params) async {
    await remoteDataSource.signUpWithEmailAndPassword(params: params);
    await remoteDataSource.saveUserToFirestore(params);
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
