import 'package:flutter/material.dart';
import 'package:imtihon202/utils/my_images.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.red,
          child: Stack(
            children: [
              Positioned(
                  top: 0,
                  child: Image.asset(MyImages.splash_top_background_img)
              ),
              Image.asset(MyImages.splash_vector_img),
            ],
          ),
        ),
      ),
    );
  }
}
