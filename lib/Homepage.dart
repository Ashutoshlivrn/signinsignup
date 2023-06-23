import 'package:flutter/material.dart';
import 'package:signinsignup/signIn.dart';


import 'assets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(' Home Page'),),
      body: Center(
        child: IconButton(onPressed: (){
          Auth().signOut();
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SIGNINPAGE(),  ));
          } , icon: const Icon(Icons.arrow_back, )),
      ),
    );
  }
}
