import 'package:flutter/material.dart';

import '../constants.dart';
import '../model/sidebar.dart';

//styling const side bar item data using SidebarRow class
class SidebarRow extends StatelessWidget {
  SidebarRow({required this.item});

  final SidebarItem item;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              width: 42.0,
              height: 42.0,
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14.0),
                gradient: item.background,
              ),
              child: item.icon,
            ),
            SizedBox(width: 12),
            Container(
                child: Text(
                  item.title,
                  style: kCalloutLabelStyle,
                )
            ),
          ],
        ),
      ],
    );
  }
}