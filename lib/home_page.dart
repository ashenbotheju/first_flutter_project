import 'package:flutter/material.dart';
import 'package:forth_project/to_do.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController psw = TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text(
                "Login",
                style: TextStyle(fontSize: 80),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  controller: email,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  obscureText: true,
                  controller: psw,
                ),
              ),
              SizedBox(
                height: 80,
                width: 300,
                child: ElevatedButton(
                  onPressed: () {
                    print(email.text);
                    print(psw.text);
                    if (email.text == "" && psw.text == "") {
                      print("ok");
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const ToDo()),
                      );
                    } else {
                      print("error");
                    }
                  },
                  child: const Text(
                    "Login",
                    style: TextStyle(fontSize: 40),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
