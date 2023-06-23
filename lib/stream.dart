import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:signinsignup/signIn.dart';


import 'Homepage.dart';
class Streams extends StatefulWidget {
  const Streams({Key? key}) : super(key: key);

  @override
  State<Streams> createState() => _StreamsState();
}

class _StreamsState extends State<Streams> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream:  FirebaseAuth.instance.authStateChanges() ,
        builder: (context, snapshot) {
          if(snapshot.hasData){
            return const SIGNINPAGE();
          }
          else{
          return const HomePage();
          }
        }

        , );
  }
}
