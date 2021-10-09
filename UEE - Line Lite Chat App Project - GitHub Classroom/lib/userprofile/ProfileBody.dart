import 'package:flutter/material.dart';

import 'ProfilePic.dart';

class ProfileBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfilePic(),
        SizedBox(height: 20),
        ProfileMenuList(
          text: "My Profile",
          press: (){},
        ),
        ProfileMenuList(
          text: "Security",
          press: (){},
        ),
        ProfileMenuList(
          text: "Change number",
          press: (){},
        ),
        ProfileMenuList(
          text: "Request account info",
          press: (){},
        ),
        ProfileMenuList(
          text: "Delete my account",
          press: (){},
        ),
      ],
    );
  }
}

class ProfileMenuList extends StatelessWidget {
  const ProfileMenuList({
    Key key,
    @required this.text,
    @required this.press,
  }) : super(key: key);

  final String text;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: Color(0xFFF5F6F9),
          padding: EdgeInsets.all(20),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        ),
        onPressed: press,
        child: Row(
          children: [
            SizedBox(width: 20),
            Expanded(child: Text(
                text,
              style: Theme.of(context).textTheme.bodyText1,
            ),
            ),
            Icon(Icons.arrow_forward_ios)
          ],
        ),
      ),
    );
  }
}

