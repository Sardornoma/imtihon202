import 'package:flutter/material.dart';
import 'package:imtihon202/screens/login_page.dart';

import '../utils/my_images.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GestureDetector(
          onDoubleTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()),);
          },
          child: Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.white,
            child: Stack(
              children: const [
                Positioned(
                  top: -90,
                  child: Image(
                    image: AssetImage(MyImages.splash_top_background_img),
                  ),
                ),
                Positioned(
                  top: 350,
                  child: Image(
                    image: AssetImage(MyImages.splash_vector_img),
                  ),
                ),
                Positioned(
                  top: 90,
                  left: 50,
                  child: Image(
                    image: AssetImage(MyImages.splash_girl_img),
                    height: 300,
                    width: 300,
                  ),
                ),
                Positioned(
                    top: 80,
                    left: 120,
                    child: Text(
                      'Meblanje',
                      style: TextStyle(
                          fontSize: 27,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff3F414E)),
                    )),
                Positioned(
                  top: 480,
                  left: 40,
                  child: Text(
                    'Belanja kebutuhan\ndalam genggaman',
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 27, color: Color(0xff3F414E)),
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
