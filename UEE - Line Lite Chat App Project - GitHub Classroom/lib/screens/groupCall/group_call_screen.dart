import 'package:flutter/material.dart';
import 'package:Line_Lite/groupchatdetail/GroupChatDetailPageInside.dart';

import '/components/rounded_button.dart';
import '/constants.dart';
import '/size_config.dart';
import 'package:flutter_svg/svg.dart';

import 'components/body.dart';

class GroupCallScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      // appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: buildBottomNavBar(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset("assets/icons/Icon Back.svg"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => GroupChatDetailPageInside()),
            );
          },
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset(
              "assets/icons/Icon User.svg",
              height: 24,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  Container buildBottomNavBar() {
    return Container(
      color: kBackgoundColor,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              RoundedButton(
                color: kRedColor,
                iconColor: Colors.white,
                size: 48,
                iconSrc: "assets/icons/Icon Close.svg",
                press: () {},
              ),
              Spacer(flex: 3),
              RoundedButton(
                color: Color(0xFF2C384D),
                iconColor: Colors.white,
                size: 48,
                iconSrc: "assets/icons/Icon Volume.svg",
                press: () {},
              ),
              Spacer(),
              RoundedButton(
                color: Color(0xFF2C384D),
                iconColor: Colors.white,
                size: 48,
                iconSrc: "assets/icons/Icon Mic.svg",
                press: () {},
              ),
              RoundedButton(
                color: Color(0xFF2C384D),
                iconColor: Colors.white,
                size: 48,
                iconSrc: "assets/icons/Icon Video.svg",
                press: () {},
              ),
              RoundedButton(
                color: Color(0xFF2C384D),
                iconColor: Colors.white,
                size: 48,
                iconSrc: "assets/icons/Icon Repeat.svg",
                press: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }

}
//   AppBar buildAppBar() {
//     return AppBar(
//       backgroundColor: Colors.transparent,
//       elevation: 0,
//       leading: IconButton(
//         icon: SvgPicture.asset("assets/icons/Icon Back.svg"),
//         onPressed: () {
//           Navigator.push(
//             context,
//             MaterialPageRoute(builder: (context) => GroupChatDetailPageInside()),
//           );
//         },
//       ),
//       actions: [
//         IconButton(
//           icon: SvgPicture.asset(
//             "assets/icons/Icon User.svg",
//             height: 24,
//           ),
//           onPressed: () {},
//         ),
//       ],
//     );
//   }
// }
