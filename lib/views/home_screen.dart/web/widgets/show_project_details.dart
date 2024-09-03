import 'package:flutter/material.dart';

class ShowProjectDetails extends StatelessWidget {
  const ShowProjectDetails({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        // width: size.width * 0.6,
        color: Colors.red,
      ),
    );
  }
}
