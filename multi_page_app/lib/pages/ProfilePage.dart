import 'package:flutter/material.dart';

class Profilepage extends StatelessWidget {
  const Profilepage({super.key});

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(title: Text('Profile Page')),
      body: Padding(
        padding: EdgeInsets.all(20),

        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 50),
              Text(
                'Xander Fleming',
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              Text(
                'Zachary Siegel',
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              Text(
                'Ty Allen',
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              SizedBox(height: 100),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(
                    context,
                  );
                },
                child: Text("Go To Home Page"),
              ),
            ],
          ),
        ),
      ),
      );
  }
}
