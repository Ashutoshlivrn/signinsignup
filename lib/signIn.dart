import 'package:flutter/material.dart';
import 'package:signinsignup/signUp.dart';

import 'Homepage.dart';
import 'assets.dart';


class SIGNINPAGE extends StatefulWidget {
  const SIGNINPAGE({Key? key}) : super(key: key);

  @override
  State<SIGNINPAGE> createState() => _SIGNINPAGEState();
}

class _SIGNINPAGEState extends State<SIGNINPAGE> {
  var email = TextEditingController();
  var password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('sign in page'),),
      body: Center(
        child: Column(
          children: [
            TextField(  controller: email ,),
            const SizedBox(height: 20,),
            TextField(  controller: password ,),
            const SizedBox(height: 20,),
            ElevatedButton(onPressed: () async{
              await Auth().signIn(email.text, password.text);
              Navigator.of(context).push(MaterialPageRoute(builder:  (context) => const HomePage()  ,));
            }, child: const Text('sign in')),
            const SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SIGNUPPAGE(),));
            }, child: const Text('go to sign up page'))
          ],
        ) ,
      ),
    );
  }
}
