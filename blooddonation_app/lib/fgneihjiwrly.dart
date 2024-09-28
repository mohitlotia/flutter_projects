import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter/material.dart';

class SignInDemo extends StatefulWidget {
  @override
  _SignInDemoState createState() => _SignInDemoState();
}

class _SignInDemoState extends State<SignInDemo> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();

  String name = '';
  String email = '';
  String imageUrl = '';

  Future<User?> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await googleSignIn.signIn();

    if (googleUser == null) {
      return null;
    }

    final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
    final OAuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    final UserCredential userCredential = await _auth.signInWithCredential(credential);
    final User? user = userCredential.user;

    if (user != null) {
      setState(() {
        name = user.displayName ?? '';
        email = user.email ?? '';
        imageUrl = user.photoURL ?? '';
      });
    }
    return user;
  }

  void signOutGoogle() async {
    await googleSignIn.signOut();
    _auth.signOut();
    setState(() {
      name = '';
      email = '';
      imageUrl = '';
    });
    print("User Signed Out");
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          if (name.isNotEmpty) ...[
            CircleAvatar(
              backgroundImage: NetworkImage(imageUrl),
            ), 
            Text(name),
            Text(email),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: signOutGoogle,
              child: Text('Sign Out'),
            ),
          ] else ...[
            ElevatedButton(
              onPressed: signInWithGoogle,
              child: Text('Sign In with Google'),
            ),
          ]
        ],
      ),
    );
  }
}
