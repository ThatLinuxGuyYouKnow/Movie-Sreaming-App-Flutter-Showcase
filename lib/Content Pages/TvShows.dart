import 'package:flutter/material.dart';
import 'package:silly/Components/ShowsGrid.dart';

class TvShows extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: ShowsGrid(
        headerText: 'Shows',
      ),
    );
  }
}
