import 'package:Line_Lite/screens/AudioCallScreen.dart';
import 'package:Line_Lite/screens/DialScreen.dart';
import 'package:Line_Lite/screens/SettingsScreen.dart';
import 'package:flutter/material.dart';
import 'package:Line_Lite/components/body.dart';

class ChatDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: buildAppBar(),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            BackButton(),
            CircleAvatar(
              backgroundImage: AssetImage("assets/images/jenny.jpg"),
            ),
            SizedBox(width: 20.0 * 0.75),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Jane Russel",
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  "Active 3m ago",
                  style: TextStyle(fontSize: 12),
                )
              ],
            )
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.local_phone),
            onPressed: () {
              Navigator.push(context,MaterialPageRoute(builder: (context)=>
                  DialScreen(),
              ));
            },
          ),
          IconButton(
            icon: Icon(Icons.videocam),
            onPressed: () {
              Navigator.push(context,MaterialPageRoute(builder: (context)=>
                  AudioCallScreen(),
              ));
            },
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {
              Navigator.push(context,MaterialPageRoute(builder: (context)=>
                  SettingsScreen(),
              ));
            },
          ),
          SizedBox(width: 20.0 / 3),
        ],
      ),
      body: Body(),
    );
  }
}

//   AppBar buildAppBar() {
//     return AppBar(
//       automaticallyImplyLeading: false,
//       title: Row(
//         children: [
//           BackButton(),
//           CircleAvatar(
//             backgroundImage: AssetImage("assets/images/jenny.jpg"),
//           ),
//           SizedBox(width: 20.0 * 0.75),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 "Jane Russel",
//                 style: TextStyle(fontSize: 16),
//               ),
//               Text(
//                 "Active 3m ago",
//                 style: TextStyle(fontSize: 12),
//               )
//             ],
//           )
//         ],
//       ),
//       actions: [
//         IconButton(
//           icon: Icon(Icons.local_phone),
//           onPressed: () {
//             return MaterialPageRoute(builder: (context)=>AudioCallScreen());
//           },
//         ),
//         IconButton(
//           icon: Icon(Icons.videocam),
//           onPressed: () {},
//         ),
//         SizedBox(width: 20.0 / 2),
//       ],
//     );
//   }
// }

