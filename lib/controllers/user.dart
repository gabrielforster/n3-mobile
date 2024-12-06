import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

// UserController é o controller responsável por tratativas que envolvem a autenticação do usuário
class UserController {
  // user é a instância do usuário autenticado
  static User? user = FirebaseAuth.instance.currentUser;

  // loginWithGoogle é uma função que realiza o login com o Google
  static Future<void> loginWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      if (googleUser == null) {
        return;
      }

      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      try {
        final UserCredential userCredential =
            await FirebaseAuth.instance.signInWithCredential(credential);
        user = userCredential.user;
      } on FirebaseAuthException catch (e) {
        print('Firebase Auth Error: ${e.code} - ${e.message}');
      }
    } catch (e) {
      print('Error during Google sign in: $e');
      return null;
    }
  }

  // signOut é uma função que realiza o logout do usuário
  static Future<void> signOut() async {
    await FirebaseAuth.instance.signOut();
    await GoogleSignIn().signOut();
  }
}
