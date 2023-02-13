import 'dart:html';
import 'package:flutter/material.dart';
import 'package:pr1/chats.dart';

import 'package:pr1/task2.dart';
void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return MaterialApp(home: test());
  }
}
class homepage extends StatelessWidget{
  Widget build(BuildContext context) {
    return Scaffold(

        body: Container(
          child: Column(
            children: [
              Center(
                child: SizedBox(
                  height: 100,
                  child: Container(
                    height: 50,
                    width: 50,
                    child: Image(
                      image: AssetImage(
                          "Images/photos/Screenshot 2023-02-10 010943.png"),
                    ),
                  ),
                ),
              ),
              SizedBox(

                height: 20,
              ),
              ElevatedButton(

                  onPressed: () {
                    var snackBar = SnackBar(content: Text('Hello, I am here'));
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    Navigator.push(  context,
                      MaterialPageRoute(builder: (context) {    return chats();
                      }),);


                  },
                  child: Text('login'),
                  style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xff075e55),),)

            ],
          ),
        ));
}}
