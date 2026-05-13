import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});
  
  @override
  State<MainApp> createState() => _MainAppState();
  
}
class _MainAppState extends State<MainApp>
{
  int increment = 0;
  String btnText = "Click me!";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 125,
          centerTitle: true,
          title: Text(
            "My App",
            style: TextStyle(
              fontSize: 100,
              color: Colors.yellow,
              fontWeight: FontWeight.bold,
            ),
          ),
            
          ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Hello Xander!'),
              SizedBox(height: 100),
              ElevatedButton(onPressed: buttonClicked, child: Text(btnText)),
            ],
          ),
        ),
      ),
    );
  }
  
  void buttonClicked()
  {
    setState(() {
      increment++;
      btnText = "$increment";
    });
  }
}