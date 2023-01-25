
import 'package:flutter/material.dart';

import '../pages/main_page.dart';
import '../service/auth_service.dart';
import 'signin_page.dart';


class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController cPasswordController = TextEditingController();

  bool isLoading = false;

  void doSignUp() async {
    String name = nameController.text;
    String email = emailController.text;
    String password = passwordController.text;
    String cPassword = cPasswordController.text;

    if (name.isEmpty || email.isEmpty || password.isEmpty) return;

    if (password != cPassword) return;

    setState((){
      isLoading = true;
    });

    await AuthService.signUpUser(email, password).then((value) => {
      if (value != null) {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const MainPage())),
      }
    });

    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    const SizedBox(height: 50,),
                    Center(
                      child: Container(
                        height: 200,
                        width: 200,
                        child: const Image(
                          image: AssetImage("assets/images/rasm.jpg"),

                        ),
                      ),
                    ),
                    Column(
                      children:  [
                        const Text(
                          "Welcome back!",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        const SizedBox(height: 10,),
                        const Text(
                          "Log in to your existant accaunt of Q Allure",
                          style: TextStyle(
                              color: Colors.grey
                          ),
                        ),
                        /////////////////////////////////////////
                        //search
                        const SizedBox(
                          height: 40,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Container(
                                  height: 50,
                                  width: 350,
                                  decoration: BoxDecoration(
                                    color: Colors.white,

                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child:  TextField(
                                    controller: nameController,
                                    decoration: InputDecoration(
                                      hintText:"name",
                                      prefixIcon: const Icon(
                                        Icons.perm_identity_sharp,
                                      ),
                                      border: InputBorder.none,
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(width: 3,color: Colors.blue,),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          width: 3,
                                          color: Colors.black45,

                                        ),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),

                                  ),
                                ),
                                const SizedBox(height: 20,),
                                Container(
                                  height: 50,
                                  width: 350,
                                  decoration: BoxDecoration(
                                    color: Colors.white,

                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child:  TextField(
                                    controller: emailController,
                                    decoration: InputDecoration(
                                      hintText:"email",
                                      prefixIcon: const Icon(
                                        Icons.perm_identity_sharp,
                                      ),
                                      border: InputBorder.none,
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(width: 3,color: Colors.blue,),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          width: 3,
                                          color: Colors.black45,

                                        ),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),

                                  ),
                                ),
                                const SizedBox(height: 20,),
                                Container(
                                  height: 50,
                                  width: 350,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child:  TextField(
                                    controller: passwordController,
                                    decoration: InputDecoration(
                                      hintText: "Password",
                                      prefixIcon: const Icon(
                                        Icons.lock_outline_rounded,
                                      ),
                                      border: InputBorder.none,
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(width: 3,color: Colors.blue,),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          width: 3,
                                          color: Colors.cyan,

                                        ),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),

                                  ),
                                ),
                                const SizedBox(height: 20,),
                                Container(
                                  height: 50,
                                  width: 350,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child:  TextField(
                                    controller: cPasswordController,
                                    decoration: InputDecoration(
                                      hintText: "Coniform Password",
                                      prefixIcon: const Icon(
                                        Icons.lock_outline_rounded,
                                      ),
                                      border: InputBorder.none,
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(width: 3,color: Colors.blue,),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          width: 3,
                                          color: Colors.cyan,

                                        ),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),

                                  ),
                                ),
                                const SizedBox(height: 20,),

                                Container(
                                  height: 50,
                                  width: 200,
                                  decoration: BoxDecoration(
                                    color: Colors.blue.shade900,
                                    borderRadius: BorderRadius.circular(20),

                                  ),
                                  child: Container(
                                    child: TextButton(
                                      onPressed: doSignUp,
                                      child: const Text(
                                        "LOG IN",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),

                                ),
                                const SizedBox(height: 20,),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: TextButton(
                                    onPressed: (){
                                      // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const SignInPage()));
                                    },
                                    child: const Text("Sign Up"),
                                  ),
                                ),
                              ],
                            ),
                            (isLoading) ?
                            const Center(
                              child: CircularProgressIndicator(),
                            ) : const SizedBox(),
                          ],
                        ),


                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}