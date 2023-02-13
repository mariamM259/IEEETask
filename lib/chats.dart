import 'dart:html';
import 'package:flutter/material.dart';
import 'package:pr1/calls.dart';
import 'package:pr1/status.dart';

class chats extends StatefulWidget {
  const chats({Key? key}) : super(key: key);

  @override
  State<chats> createState() => _chatsState();
}

class _chatsState extends State<chats> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
          appBar: AppBar(
            title: Text('WhatsApp'),
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios_new),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            backgroundColor: Color(0xff075e55),
            actions: [Icon(Icons.search),PopupMenuButton(  itemBuilder: (context) {
              return [];  },
            ),],
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.camera)),
                Tab(
                  text: 'chats',
                ),
                Tab(text: 'Status'),
                Tab(
                  text: 'calls',
                ),
              ],
              indicatorColor: Colors.white,
            ),
          ),
          body: TabBarView(
            children: [
              Container(
                child: Text('camera'),
              ),
              Mylist(),
              stories(),
              calls(),

            ],
          )),
    ));
  }
}

class Mylist extends StatelessWidget {
  const Mylist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: ListView.separated(
        shrinkWrap: true,
        separatorBuilder: (context, index) => Center(
            child: Divider(color: Colors.grey,
              thickness: 0.25,
              indent: 40,
              endIndent: 40,
        )),
        itemCount: 100,
        itemBuilder: (context, index) => MyTile(index+1),
      ),
    );
  }
}
class MyTile extends StatelessWidget {
  MyTile( this.index);

  int index;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 35,backgroundColor: Color(0xff61e197),
      ),
      title: Text('Lord Voldemort ${index}'),
      subtitle: Text('Avada Kedavra'),

    );
  }
}