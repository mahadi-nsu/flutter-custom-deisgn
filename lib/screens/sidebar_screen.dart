import 'package:first/components/sidebarRow.dart';
import 'package:flutter/material.dart';
import 'package:first/model/sidebar.dart';

import '../constants.dart';

class SidebarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width * .85,
      decoration: BoxDecoration(
          color: kSidebarBackgroundColor,
          borderRadius: BorderRadius.only(topRight: Radius.circular(34.0))),
      padding: EdgeInsets.symmetric(vertical: 35.0, horizontal: 20.0),
      child: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('asset/images/profile.jpg'),
                  radius: 21.0,
                ),
                SizedBox(
                  width: 17,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Mahadi Hassan",
                      style: kHeadlineLabelStyle,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Lisence will end 21st February 2030",
                      style: kSearchPlaceholderStyle,
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.085,
            ),
            SidebarRow(
              item: sideBarItem[0],
            ),
            SizedBox(
              height: 32,
            ),
            SidebarRow(
              item: sideBarItem[1],
            ),
            SizedBox(
              height: 32,
            ),
            SidebarRow(
              item: sideBarItem[2],
            ),
            SizedBox(
              height: 32,
            ),
            SidebarRow(
              item: sideBarItem[3],
            ),
            SizedBox(
              height: 32,
            ),
            Spacer(),
            Row(
              children: [
                Image.asset(
                  'asset/icons/icon-logout.png',
                  width: 17.0,
                ),
                SizedBox(width: 12.0),
                Text(
                  "Log out",
                  style: kSecondaryCalloutLabelStyle,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
