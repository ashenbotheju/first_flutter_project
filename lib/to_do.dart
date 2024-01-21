import 'package:flutter/material.dart';

class ToDo extends StatefulWidget {
  const ToDo({super.key});

  @override
  State<ToDo> createState() => _ToDoState();
}

TextEditingController text = TextEditingController();
List<String> todolist = [];

class _ToDoState extends State<ToDo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text(
                "ToDo",
                style: TextStyle(fontSize: 80),
              ),
              Column(
                children: [
                  SizedBox(
                    width: 400,
                    height: 350,
                    child: ListView.builder(
                      itemCount: todolist.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          padding: const EdgeInsets.all(8.0),
                          width: 300,
                          height: 80,
                          color: Colors.grey.shade200,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                todolist[index],
                                style: TextStyle(fontSize: 20),
                              ),
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    todolist.removeAt(index);
                                  });
                                },
                                icon: Icon(Icons.check),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 300,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        controller: text,
                      ),
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        if (text.text.isNotEmpty) {
                          setState(() {
                            todolist.add(text.text);
                            text.text = '';
                          });
                        }
                        print(todolist);
                      },
                      icon: Icon(Icons.add))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
