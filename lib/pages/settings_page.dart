import 'package:flutter/material.dart';

import '../auth_pages/signin_page.dart';
import '../service/auth_service.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Posts"),
        actions: [
          IconButton(
            onPressed: (){
              AuthService.signOutUser().then((value) => {
                // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const SignInPage())),
              });
            },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
    );
  }
}
