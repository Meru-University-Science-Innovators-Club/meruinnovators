import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:meruinnovators/common/data/models/auth.dart';
import 'package:meruinnovators/common/data/models/failure.dart';
import 'package:meruinnovators/common/utils/network.dart';

@singleton
class AuthRepository {
  final _networkUtil = NetworkUtil();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  final GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: [
      'profile',
      'email',
    ],
  );

  Future<String> signInWithGoogle() async {
    try {
      final googleAccount = await _googleSignIn.signIn();
      Logger().i('..... googleAccount $googleAccount');
      final gAuthentication = await googleAccount?.authentication;
      final credentials = GoogleAuthProvider.credential(
        idToken: gAuthentication?.idToken,
        accessToken: gAuthentication?.accessToken,
      );

      final authResult = await _auth.signInWithCredential(credentials);
      Logger().d('..... authResult $authResult');
      final user = authResult.user;
      Logger().d('..... user $user');

      // final response = await _networkUtil.postReq(
      //   '/login',
      //   queryParameters: {
      //     'avatar': user?.photoURL ?? '',
      //     'name': user?.displayName ?? user?.email?.split(' ').first,
      //     'type': 2,
      //     'open_id': user?.uid,
      //     'email': user?.email,
      //   },
      // );
      // Logger().d(response);
      if (user != null) {
        assert(!user.isAnonymous, 'User must not be anonymous');
        return Future.value(authResult.credential?.accessToken);
      } else {
        throw Failure(message: 'An unexpected error occured');
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<AuthResult> signIn({required String token}) async {
    try {
      final response = await _networkUtil.postReq(
        '/social_login/google',
        body: {
          'access_token': token,
        },
      );

      Logger().d(response);

      return AuthResult.fromJson(response);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> logOut() async {
    try {
      await _networkUtil.postReq('/logout');
      await _googleSignIn.signOut();
    } catch (e) {
      rethrow;
    }
  }
}
