import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage26 extends StatefulWidget{
  const HomePage26({super.key});

  @override
  State<HomePage26> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage26> {
  String title = "Button off";

  void onSubmit(String value) {
    setState(() {
      title = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text("Text 1"),
            Text("Text 2"),
            Text("Text 3 bla bla bla bla bla"),
          ],
        ),
      ),
    );
  }
}