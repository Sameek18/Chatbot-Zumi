import 'package:flutter/material.dart';
import 'package:bubble/bubble.dart';
import 'package:intl/intl.dart';
import 'package:wit_ai/wit_ai.dart';

class MyHomePage extends StatefulWidget {
  static const routeName = '/home';
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final messageController = TextEditingController();
  List<Map> messages = new List();
  void response(query) async {
    setState(() {
      messages.insert(0, {"data": 0, "messages": 0});
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Zumi"),
      ),
      body: Container(
        child: Column(
          children: [
            Center(
              child: Container(
                padding: EdgeInsets.only(top: 15, bottom: 10),
                child: Text(
                  "Today, ${DateFormat("Hm").format(DateTime.now())}",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            Flexible(
              child: ListView.builder(
                  reverse: true,
                  itemCount: 0,
                  itemBuilder: (context, index) {}),
            ),
            Divider(
              height: 5,
              color: Colors.deepOrange,
            ),
            Container(
              child: ListTile(
                leading: IconButton(
                  icon: Icon(
                    Icons.person,
                    color: Colors.deepOrange,
                    size: 35,
                  ),
                ),
                title: Container(
                  height: 35,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: Color.fromRGBO(220, 220, 220, 1)),
                  padding: EdgeInsets.only(left: 15),
                  child: TextFormField(
                    controller: messageController,
                    decoration: InputDecoration(
                      hintText: "Enter a Message",
                      hintStyle: TextStyle(color: Colors.black26),
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                    ),
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ),
                trailing: IconButton(
                  icon: Icon(
                    Icons.send,
                    size: 30,
                    color: Colors.deepOrange,
                  ),
                  onPressed: () {
                    if (messageController.text.isEmpty) {
                      print("empty message");
                    } else {
                      setState(() {});
                    }
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget chat(String message, int data) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Row(
        mainAxisAlignment:
            data == 1 ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          data == 0
              ? Container(
                  height: 60,
                  width: 60,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/image/robot.png'),
                  ),
                )
              : Container(),
          Padding(
            padding: EdgeInsets.all(10),
            child: Bubble(
              radius: Radius.circular(15),
              color: data == 0
                  ? Color.fromRGBO(23, 157, 139, 1)
                  : Colors.orangeAccent,
              elevation: 0,
              child: Padding(
                padding: EdgeInsets.all(2),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      child: Container(
                        constraints: BoxConstraints(maxWidth: 200),
                        child: Text(
                          message,
                          style: TextStyle(
                              color: Colors.deepOrange,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          data == 1
              ? Container(
                  height: 60,
                  width: 60,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/image/robot.png'),
                  ),
                )
              : Container()
        ],
      ),
    );
  }
}
