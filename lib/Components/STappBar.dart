import 'package:flutter/material.dart';

class STappBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final double? titleFontSize;
  final bool? lightFont;

  STappBar(
      {super.key, this.title, this.titleFontSize = 22, this.lightFont = false});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.black,
      title: Text(
        title ?? '',
        style: TextStyle(
          color: Colors.white,
          fontFamily: 'Ubuntu',
          fontSize: titleFontSize,
          fontWeight: lightFont! ? FontWeight.normal : FontWeight.bold,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
