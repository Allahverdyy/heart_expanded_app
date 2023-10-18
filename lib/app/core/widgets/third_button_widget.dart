import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:heart_expanded_app/app/core/constants/images_constants.dart';
import 'package:heart_expanded_app/app/router/app_router.gr.dart';

class ThirdButtonWidget extends StatelessWidget {
  final List<Color> thirdButtonBg;
  final Color imageColor;
  const ThirdButtonWidget({
    super.key,
    this.thirdButtonBg = const <Color>[
            Colors.black,
            Colors.black
          ],
    this.imageColor = Colors.purple
  });
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 9 / 10,
      decoration:  BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: const Alignment(0.8, 1),
          colors: thirdButtonBg,
          tileMode: TileMode.mirror,
        ),
      ),
      child: TextButton(
        onPressed: () {
          context.router
              .push(const HeartScreenTwoRoute());
        },
        child: Image.asset(flutterAnatomicalHeart,
            color: imageColor,
            width: MediaQuery.sizeOf(context).width / 8),
      ),
    ));
  }
}
