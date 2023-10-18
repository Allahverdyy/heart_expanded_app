import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:heart_expanded_app/app/router/app_router.gr.dart';

class SecondButtonWidget extends StatelessWidget {
  final List<Color> secondButtonBg;
  final Color imageColor;
  const SecondButtonWidget({
    super.key,
    this.secondButtonBg = const <Color>[
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
          colors:secondButtonBg,
          tileMode: TileMode.mirror,
        ),
      ),
      child: TextButton(
        onPressed: () {
          context.router.push(const HeartScreenTwoRoute());
        },
        child: Icon(Icons.heart_broken_sharp,
            color: imageColor,
            size: MediaQuery.sizeOf(context).width / 8),
      ),
    ));
  }
}
