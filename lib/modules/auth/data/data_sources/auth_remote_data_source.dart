import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:it_navigator/modules/auth/auth.dart';
import 'package:it_navigator/modules/common_base/errors/failure.dart';

abstract class AuthRemoteDataSource {
  Future<User?> signInWithEmailAndPassword(LoginUseCaseParams params);

  Future<User?> signUpWithEmailAndPassword({
    required SignUpUseCaseParams params,
  });

  Future<void> signOut();

  User? getCurrentUser();

  Future<void> saveUserToFirestore(SignUpUseCaseParams user);
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  AuthRemoteDataSourceImpl({
    required this.firebaseAuth,
    required this.firestore,
  });
  final FirebaseAuth firebaseAuth;
  final FirebaseFirestore firestore;

  @override
  Future<User?> signInWithEmailAndPassword(LoginUseCaseParams params) async {
    try {
      final credential = await firebaseAuth.signInWithEmailAndPassword(
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
    required SignUpUseCaseParams params,
  }) async {
    try {
      final credential = await firebaseAuth.createUserWithEmailAndPassword(
        email: params.email,
        password: params.password,
      );
      return credential.user;
    } on FirebaseAuthException catch (e) {
      throw AuthFailure(
          message: e.message ?? 'Hisob yaratishda xatolik yuz berdi');
    } catch (e) {
      throw AuthFailure(message: 'Kutilmagan muammo sodir bo\'ldi');
    }
  }

  @override
  Future<void> signOut() async {
    await firebaseAuth.signOut();
  }

  @override
  User? getCurrentUser() {
    return firebaseAuth.currentUser;
  }

  @override
  Future<void> saveUserToFirestore(SignUpUseCaseParams user) async {
    try {
      final uid = firebaseAuth.currentUser?.uid;
      if (uid == null) {
        throw AuthFailure(message: 'Foydalanuvchi topilmadi');
      }

      final docRef = firestore.collection('users').doc(uid);
      await docRef.set(
        user.toJson(),
      );
    } on FirebaseAuthException catch (e) {
      throw AuthFailure(
          message: e.message ?? 'Foydalanuvchini saqlashda xatolik');
    } catch (e) {
      throw AuthFailure(
          message: 'Foydalanuvchini saqlashda kutilmagan xatolik');
    }
  }
}
