import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Homepage(),
  ));
}

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Matrix4 newMatrix = Matrix4.identity()..scale(1.5);

    return Scaffold(
        appBar: AppBar(title: Text("BackdropFilterDemo")),
        body: Stack(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              child: Text("BackdropFilterDemo" * 10),
            ),
            BackdropFilter(
              // filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              filter: ImageFilter.matrix(newMatrix.storage),
              child: Container(
                color: Colors.white.withAlpha(0),
              ),
            )
          ],
        ));
  }
}
