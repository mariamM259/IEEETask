import 'dart:html';
import 'package:flutter/material.dart';

class stories extends StatelessWidget {
  const stories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child:
          ListView.separated(
            shrinkWrap: true,
            separatorBuilder: (context, index) => Center(
                child: Divider(
              color: Colors.grey,
              thickness: 0.25,
              indent: 40,
              endIndent: 40,
            )),
            itemCount: 100,
            itemBuilder: (context, index) => Mystories(index - 1),
          ),


    );
  }
}

class Mystories extends StatelessWidget {
  Mystories(this.index);

  int index;

  @override
  Widget build(BuildContext context) {
    if (index ==-1)
      return  Column(
        children: [
          ListTile(
            leading: Stack(children: [
              CircleAvatar(
                radius: 25,
                backgroundColor: Color(0xff61e197),
              ),
              Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                      decoration: BoxDecoration(

                        color: Color(0xff05cf5b),
                        shape: BoxShape.circle,

                      ),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ))),
            ]),
            title: Text('My Status'),
            subtitle: Text('Tap to add status update'),
          ),
          Container(
            alignment: Alignment.centerLeft,
            height: 20,
            width: double.infinity,
            color: Color(0xfff4f4f4),
            child: Text('      Recent updates', style: TextStyle(color: Colors.grey)),
          )
        ],
      );

    else {
      return ListTile(
        leading: Container(
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Color(0xff40bfa6),
                width: 2.0,
              )),
          child: Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white,
                  width: 1.5,
                )),
            child: CircleAvatar(
              radius: 35,
              backgroundColor: Color(0xff61e197),
            ),
          ),
        ),
        title: Text('user ${index}'),
        subtitle: Text('Just Now'),
      );

    }

  }
}
// class Mystory extends StatelessWidget {
//   Widget build(BuildContext context) {
//     return Column(children: [
//       ListTile(
//         leading: Stack(children: [
//           CircleAvatar(
//             radius: 25,
//             backgroundColor: Color(0xff61e197),
//           ),
//           Positioned(
//               bottom: 0,
//               right: 0,
//               child: Container(
//                   decoration: BoxDecoration(
//
//                     color: Color(0xff05cf5b),
//                     shape: BoxShape.circle,
//
//                   ),
//                   child: Icon(
//                     Icons.add,
//                     color: Colors.white,
//                   ))),
//         ]),
//         title: Text('My Status'),
//         subtitle: Text('Tap to add status update'),
//       ),
//
//       // Padding(
//       //   padding: const EdgeInsets.only(left: 22),
//       //   child: Container(
//       //     alignment: Alignment.topLeft,
//       //     child: Stack(
//       //       children: [
//       //         CircleAvatar(
//       //           backgroundColor: Color(0xff61e197),
//       //           radius: 25,
//       //         ),
//       //         Positioned(
//       //             bottom: 0,
//       //             right: 0,
//       //             child: Container(
//       //                 decoration: BoxDecoration(
//       //                   color: Color(0xff05cf5b),
//       //                   shape: BoxShape.circle,
//       //                 ),
//       //                 child: Icon(
//       //                   Icons.add,
//       //                   color: Colors.white,
//       //                 ))),
//       //       ],
//       //     ),
//       //   ),
//       // ),
//       SizedBox(
//         height: 10,
//       ),
//       Container(
//         alignment: Alignment.topLeft,
//         height: 20,
//         width: double.infinity,
//         color: Color(0xfff4f4f4),
//         child: Text('Recent updates', style: TextStyle(color: Colors.grey)),
//       ),
//     ]);
//   }
// }
