
import 'package:flutter/material.dart';

class BodyContainerWidget extends StatelessWidget {
  const BodyContainerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 3 / 5,
      margin: const EdgeInsets.only(right: 20),
      height: 200,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: <Color>[
            Color.fromARGB(255, 169, 192, 206),
            Color.fromARGB(255, 73, 181, 214),
            Color.fromARGB(255, 79, 174, 252),
            Color.fromARGB(255, 0, 77, 219),
          ],
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Flutter Nedir',
              style: TextStyle(),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Hazirlayanlar : Nurhayat-Abdulsamed',
              style: TextStyle(),
            ),
          ],
        ),
      ),
    );
  }
}
