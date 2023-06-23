import 'package:firebase_auth/firebase_auth.dart';

class Auth{

  signIn(String Email, String Password) async{
    await FirebaseAuth.instance.signInWithEmailAndPassword(email: Email, password: Password);
  }
  signUp(String Email, String Password) async{
    await FirebaseAuth.instance.createUserWithEmailAndPassword(email: Email, password:  Password);
  }
  signOut() async{
  await  FirebaseAuth.instance.signOut();
  }

}