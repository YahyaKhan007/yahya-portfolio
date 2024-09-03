import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Splash Screen"),
        ),
        body: kIsWeb
            ? const Center(child: Text("Web Mode"))
            : const Center(child: Text("Mobile Mode")));
  }
  
}
