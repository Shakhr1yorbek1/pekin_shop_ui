import 'package:flutter/material.dart';

import '../Login/SingIn.dart';
import '../service/auth_service.dart';

class Setting_page extends StatefulWidget {
  const Setting_page({Key? key}) : super(key: key);

  @override
  State<Setting_page> createState() => _Setting_pageState();
}

class _Setting_pageState extends State<Setting_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Posts"),
        actions: [
          IconButton(
            onPressed: (){
              AuthService.signOutUser().then((value) => {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const SignInPage())),
              });
            },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
    );
  }
}
