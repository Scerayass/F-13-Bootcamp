import 'package:f_13_bootcamp/pages/loginPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              FirebaseAuth.instance.currentUser!.displayName!,
              style: TextStyle(
                fontSize: 30 , fontWeight: FontWeight.bold , color: Colors.black87
              ),
            ),
            SizedBox(height: 10,),
            Text(
              FirebaseAuth.instance.currentUser!.email!,
            ),
            SizedBox(height: 30,),

            MaterialButton(
              onPressed: (){
                FirebaseAuth.instance.signOut();
                Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen()));
                Navigator.pop(context);
                },
              child: Text("LOG OUT"),
            )




          ],
        ),
      )
    );
  }
}
