import 'package:flutter/material.dart';
import 'package:multi_page_app/pages/ProfilePage.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Page')),
      body: Padding(
        padding: EdgeInsets.all(20),

        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 50),
              Text(
                'Welcome User!',
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              SizedBox(height: 100),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Profilepage()),
                  );
                },
                child: Text("Go To Profile"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
