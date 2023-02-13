
import 'package:flutter/material.dart';
class calls extends StatefulWidget {
  const calls({Key? key}) : super(key: key);

  @override
  State<calls> createState() => _callsState();
}

class _callsState extends State<calls> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: double.infinity,
        child: ListView.separated(itemBuilder: (context,index)=>mycalls(index), separatorBuilder: (context, index) => Center(
            child: Divider(color: Colors.grey,
              thickness: 0.25,
              indent: 40,
              endIndent: 40,
            )), itemCount: 100)
    );
  }


}
class mycalls extends StatelessWidget {
  mycalls( this.index);

  int index;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 35,backgroundColor: Color(0xff61e197),
      ),
      title: Text('user ${index}'),
      subtitle: Row(
        children: [
          Icon(Icons.turn_slight_right,color: Colors.greenAccent,),
          Text('25 September,12:00 a.m'),
        ],
      ),
trailing: Icon(Icons.videocam,color: Color(0xff075e55),),
    );
  }
}
