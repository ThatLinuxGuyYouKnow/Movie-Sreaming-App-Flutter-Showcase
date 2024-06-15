import 'package:flutter/material.dart';
import 'package:silly/Components/ShowsGrid.dart';

class Trending extends StatelessWidget {
  Trending({super.key});
  Widget build(BuildContext context) {
    return Scaffold(
      body: ShowsGrid(
        headerText: 'Trending Shows',
      ),
    );
  }
}
