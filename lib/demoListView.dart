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
    // double width  =
    return Scaffold(
      appBar: AppBar(
        title: Text("Trang chủ"),
        backgroundColor: Colors.amberAccent,
      ),
      body:
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text("Hello Flutter contributed by Le Do Nghiem ! This is Lorem paragraph !!!",
              style: TextStyle(
                fontSize: 25,
                color: Colors.blueAccent,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
              textAlign: TextAlign.left,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            Container(
              width: 400,
              height: 200,
              // color: Colors.amberAccent,
              alignment: Alignment.center,
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text("Item 1"),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Column 1"),
                      Text("Column 2"),
                      Text("Column 3")
                    ],
                  ),
                  Image.network('',width: 100, height: 100, fit: BoxFit.cover,),
                  Text("Item 4"),
                  ListView(
                    children: [
                      Text("New Item"),
                      Text("New Item"),
                      Text("New Item"),
                      Text("New Item"),
                      Text("New Item"),
                    ],
                  ),
                ],
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.red,  width: 1, )
              ),
            ),
          ],
        ),
      )
      ,
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