import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';

class HomePage31 extends StatefulWidget {
  const HomePage31({super.key});

  @override
  State<HomePage31> createState() => _WidgetState();
}

class _WidgetState extends State<HomePage31> {
  List<String> texts = ["Мэдээ", "Нүүр", "Профайл"];
  int navigationBarIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  void onTabNavigationItem(int idx) {
    setState(() {
      navigationBarIndex = idx;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor:Colors.blueAccent,

          bottom: TabBar(tabs: List.generate(texts.length, (i)=>Text(texts[i])),

          ),
        ),
        body: TabBarView(
          children: List.generate(texts.length, (i)=>Text(texts[i])),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: navigationBarIndex,
          onTap: onTabNavigationItem,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.newspaper), label: "Мэдээ"),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Нүүр"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Профайл"),
          ],
        ),
      ),
    );
  }
}
