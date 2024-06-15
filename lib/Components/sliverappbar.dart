import 'package:flutter/material.dart';
import 'package:silly/Components/TextWidgets.dart';

class StandardSliverAppBar extends StatelessWidget {
  final String? title;

  StandardSliverAppBar({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return SliverAppBar(
      leading: Icon(
        Icons.arrow_back_ios,
        color: Colors.white,
      ),
      title: StandardText(text: title ?? ''),
      expandedHeight: screenHeight * 0.1,
      toolbarHeight: 56.0, // Ensures the toolbar height is at least 56.0 pixels
      backgroundColor: Colors.black,
      floating: true, // This will keep the AppBar visible when scrolling
      snap:
          true, // This will make the AppBar snap back into view when scrolling
    );
  }
}
