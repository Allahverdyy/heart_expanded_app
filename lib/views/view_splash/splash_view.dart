import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});


  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          SizedBox(
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height,
            child: Image.asset(
              'assets/images/images_splash_bg.png',
              fit: BoxFit.fill,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Image.asset(
                  'assets/images/images_splash_logo.png',
                  width: MediaQuery.sizeOf(context).width * 0.25,
                  fit: BoxFit.fill,
                ),
              ),
              const Text(
                'Heart Expanded',
                style: TextStyle(color: Colors.pink, fontSize: 20),
              )
            ],
          ),
        ],
      ),
    );
  }
  
}

