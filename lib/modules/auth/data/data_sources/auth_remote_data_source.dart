import 'package:firebase_auth/firebase_auth.dart';
import 'package:it_navigator/modules/auth/auth.dart';
import 'package:it_navigator/modules/common_base/errors/failure.dart';

abstract class AuthRemoteDataSource {
  Future<User?> signInWithEmailAndPassword(LoginUseCaseParams params);

  Future<User?> signUpWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<void> signOut();

  User? getCurrentUser();
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  AuthRemoteDataSourceImpl(this._firebaseAuth);
  final FirebaseAuth _firebaseAuth;

  @override
  Future<User?> signInWithEmailAndPassword(LoginUseCaseParams params) async {
    try {
      final credential = await _firebaseAuth.signInWithEmailAndPassword(
        email: params.email,
        password: params.password,
      );
      return credential.user;
    } on FirebaseAuthException catch (_) {
      throw AuthFailure(message: 'Mavjud hisobga kirish amalga oshmadi');
    } catch (e) {
      throw AuthFailure(message: 'kutilmagan muammo sodir bo\'ldi');
    }
  }

  @override
  Future<User?> signUpWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    final credential = await _firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    return credential.user;
  }

  @override
  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }

  @override
  User? getCurrentUser() {
    return _firebaseAuth.currentUser;
  }
}
