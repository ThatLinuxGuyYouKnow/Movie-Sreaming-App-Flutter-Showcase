import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:silly/Components/loaderModal.dart';
import 'package:silly/State%20Management/loaderState.dart';

class LoaderOver extends StatelessWidget {
  final Widget baseScreen;
  LoaderOver({super.key, required this.baseScreen});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Stack(
      children: [
        baseScreen,
        Consumer<LoaderState>(
          builder: (context, loaderState, child) {
            return loaderState.loaderIsViible
                ? Center(child: LoaderModal())
                : SizedBox.shrink();
          },
        ),
      ],
    );
  }
}
