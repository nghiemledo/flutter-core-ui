import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _myHomepageState createState() => _myHomepageState();
}

class _myHomepageState extends State<MyApp> {
    String title = "This is my home page";
    void updateTitle(int index) {
      setState(() {
        if(index == 0) {
          title = "This is my home page";
        } else if (index == 1) {
          title = "This is my favourite page";
        } else {
          title = "This is my settings page";
        }
      });
    }

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text("Trang chủ"),
      backgroundColor: Colors.amberAccent,
    ),
    body: Center(child: Text(title, textScaler: TextScaler.linear(1.5))),
    drawer: ListView(
      children: [
        Text("New Item"),
        Text("New Item"),
        Text("New Item"),
        Text("New Item"),
        Text("New Item"),
      ],
    ),
    floatingActionButton: FloatingActionButton(onPressed: () {},backgroundColor: Colors.amberAccent, 
    child: Icon(Icons.access_alarm_sharp),),
    bottomNavigationBar: BottomNavigationBar(
      currentIndex: 0,
        onTap: (index) {
          print(index);
          updateTitle(index);
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favorite"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
    ]),
  );
  }
  
}