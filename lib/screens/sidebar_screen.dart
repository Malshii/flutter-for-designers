import 'package:flutter/material.dart';

import '../components/sidebar_row.dart';
import '../constants.dart';
import '../model/sidebar.dart';

//show sidebar
class SidebarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kSidebarBackgroundColor,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(34.0),
        ),
      ),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width * 0.85,
      padding: EdgeInsets.symmetric(
        vertical: 35.0,
        horizontal: 20.0,
      ),
      child: SafeArea(
        child: Column(
          children: [
            //display profile
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('asset/images/profile.jpg'),
                  radius: 21.0,
                ),
                SizedBox(
                  width: 15.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Sai Kambampati",
                      style: kHeadlineLabelStyle,
                    ),
                    SizedBox(height: 4),
                    Text(
                      "License ends on 21 Jan, 2021",
                      style: kSearchPlaceholderStyle,
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.08,
            ),
            //display sidebar items
            SidebarRow(
              item: sidebarItem[1],
            ),
            SizedBox(
              height: 32.0,
            ),
            SidebarRow(
              item: sidebarItem[2],
            ),
            SizedBox(
              height: 32.0,
            ),
            SidebarRow(
              item: sidebarItem[3],
            ),
            SizedBox(
              height: 32.0,
            ),
            //create space to bottom
            Spacer(),
            //display sidebar bottom
            Row(
              children: [
                Image.asset(
                  'asset/icons/icon-logout.png',
                  width: 17.0,
                ),
                SizedBox(
                  width: 12.0,
                ),
                Text(
                  "Log out",
                  style: kSecondaryCalloutLabelStyle,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}