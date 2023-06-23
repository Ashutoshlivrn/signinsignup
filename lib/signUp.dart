import 'package:flutter/material.dart';
import 'package:signinsignup/signIn.dart';

import 'assets.dart';

class SIGNUPPAGE extends StatefulWidget {
  const SIGNUPPAGE({Key? key}) : super(key: key);

  @override
  State<SIGNUPPAGE> createState() => _SIGNUPPAGEState();
}

class _SIGNUPPAGEState extends State<SIGNUPPAGE> {
  var signUpemail = TextEditingController();
  var signUppassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('sign up page'),),
      body: Center(
        child: Column(
          children: [
            TextField(  controller: signUpemail ,),
            const SizedBox(height: 20,),
            TextField(  controller: signUppassword,),
            const SizedBox(height: 20,),
            ElevatedButton(onPressed: () {
               Auth().signUp(signUpemail.text, signUppassword.text);
              Navigator.of(context).push(MaterialPageRoute(builder:  (context) => const SIGNINPAGE()  ,));
            }, child: const Text('sign up'))
          ],
        ) ,
      ),
    );
  }
}
