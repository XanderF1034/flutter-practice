import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});
  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
final usernameController = TextEditingController();
final passwordController = TextEditingController();
final String hardCodedUser = "xander.fleming";
final String hardCodedPass = "West0572!";
String buttonTxt = "Sign In.";


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          title: const Text
          (
          "Login",
          style: TextStyle(
            color: Colors.black,
          ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(24),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                  controller: usernameController,
                  decoration: InputDecoration(
                    labelText: "Username",
                    labelStyle: const TextStyle(
                      color: Colors.white,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      )
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                  controller: passwordController,
                  decoration: InputDecoration(
                    labelText: "Password",
                    labelStyle: const TextStyle(
                      color: Colors.white,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      )
                    ),
                  ),
                ),
                const SizedBox(height: 100),
                ElevatedButton(onPressed: trySignIn,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow,
                ),
                 child: Text(buttonTxt,
                 style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                 ),)),
              ],
            ),
          ),
        ),
      ),
    );
  }
  void trySignIn()
  {
    setState(() {
      if ((usernameController.text == hardCodedUser) && (passwordController.text == hardCodedPass))
      {
        buttonTxt = "Success.";
      }
      else
      {
        buttonTxt = "Incorrect.";
        
      }
      Future.delayed(Duration(seconds: 2), ()
        {
          setState(() {
            buttonTxt = "Sign In.";
          });
        });
    });
  }
  @override
  void dispose()
  {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
