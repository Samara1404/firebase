import 'package:firebase_auth/firebase_auth.dart';
import 'package:tap_kg/features/auth/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  @override
  Future<void> signIn(String email, String password) async {
    await _firebaseAuth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  @override
  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }

  @override
  Stream<bool> authStateChanges() {
    return _firebaseAuth.authStateChanges().map((user) => user != null);
  }
  
 @override
Future<void> signUp(String email, String password) async {
  await _firebaseAuth.createUserWithEmailAndPassword(
    email: email,
    password: password,
  );
}

}
