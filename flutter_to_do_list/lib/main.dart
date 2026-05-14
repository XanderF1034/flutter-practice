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
  final taskController = TextEditingController();
  String buttonTxt = "Add Task";
  List<String> tasks = [];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: Text(
            "To-Do App",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(24),
          child: ListView(
            children: [
              TextField(
                style: TextStyle(color: Colors.blue),
                controller: taskController,
                decoration: InputDecoration(
                  labelText: "Enter Task",
                  labelStyle: const TextStyle(color: Colors.blue),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: tryAddTask,
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                child: Text(
                  buttonTxt,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: tasks.length,
                itemBuilder: (context, index) {
                  return (Container(
                    margin: EdgeInsets.only(bottom: 10),
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(color: Colors.blueGrey, borderRadius: BorderRadius.circular(12),),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          tasks[index],
                          style: const TextStyle(color: Colors.blue),
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                            tasks.removeAt(index);
                          });
                          },
                          icon: const Icon(
                            Icons.delete,
                            color: Colors.white,
                            ),
                        ),
                      ],
                    ),
                    
                  ));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  void tryAddTask() {
    setState(() {
      if ((taskController.text).isNotEmpty) {
        buttonTxt = "Success.";
        tasks.add(taskController.text);
        taskController.text = " ";
        Future.delayed(Duration(seconds: 2), () {
          setState(() {
            buttonTxt = "Add Task";
          });
        });
      } else {
        buttonTxt = "Nothing Entered";
        Future.delayed(Duration(seconds: 2), () {
          setState(() {
            buttonTxt = "Add Task";
          });
        });
      }
    });
  }
}
