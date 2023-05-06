import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const MyStatefulWidget(),
    );
  }
}


class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assest/bg.png'), fit: BoxFit.fill),
      ),
      child: Column(
        children: <Widget>[
          Container(
            //: const EdgeInsets.all(10),
            margin: EdgeInsets.fromLTRB(125, 30, 125, 30),
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.9),
                borderRadius: BorderRadius.all(Radius.circular(30)),
                border: Border.all(color: Colors.black)),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
              child: TextField(
                // controller: nameController,
                decoration: const InputDecoration(
                    labelText: 'Login',
                    labelStyle: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    )),
              ),
            ),
          ),
          Container(
            //: const EdgeInsets.all(10),
            margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.all(Radius.circular(25)),
                border: Border.all(color: Colors.black.withOpacity(0.9))),

            child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                    labelText: 'User Name',
                    labelStyle: TextStyle(
                      fontSize: 15,
                    )),
              ),
            ),
          ),
          Container(
            //: const EdgeInsets.all(10),
            margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.all(Radius.circular(25)),
                border: Border.all(color: Colors.black.withOpacity(0.9))),

            child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
              child: TextField(
                controller: passwordController,
                decoration: const InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(
                      fontSize: 15,
                    )),
              ),
            ),
          ),

          Container(
              height: 75,
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll<Color>(
                        Colors.grey.withOpacity(0.9))),
                child: const Text(
                  'Login',
                  style: TextStyle(fontSize: 30, color: Colors.black),
                ),
                onPressed: () {
                  print(nameController.text);
                  print(passwordController.text);
                },
              )),
        ],
      ),
    );
  }
}
