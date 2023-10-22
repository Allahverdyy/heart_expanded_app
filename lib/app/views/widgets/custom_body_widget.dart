
import 'package:flutter/material.dart';

class CustomBodyWidget extends StatelessWidget {
  final String imageName;
  final dynamic fit;
  const CustomBodyWidget({
    super.key, required this.imageName, required this.fit
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 3,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.90,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment(0.8, 1),
              colors: <Color>[
                Color.fromARGB(255, 145, 184, 255),
                Color.fromARGB(255, 224, 137, 250),
                Color.fromARGB(255, 199, 43, 247),
                Color.fromARGB(255, 139, 73, 214),
                Color.fromARGB(255, 120, 0, 219),
              ],
              tileMode: TileMode.mirror,
            ),
          ),
          // padding: EdgeInsets.all(40),
          //dikey yazdırma
          // padding: EdgeInsets.symmetric(
          //     horizontal: MediaQuery.of(context).size.width * 0.5),
          child: Image.asset(
            imageName,
            fit: fit,
          ),
        )
      );
  }
}
