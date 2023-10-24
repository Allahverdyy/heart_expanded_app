import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:heart_expanded_app/core/constants/colors_constants.dart';

class HomeContainerWidget extends StatelessWidget {
  final void Function()? basgit;
  final dynamic en;
  final dynamic uzun;
  final String yazi;

  const HomeContainerWidget({
    Key? key,
    required this.basgit,
    required this.en,
    required this.uzun,
    required this.yazi,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Container(
        width: en,
        height: uzun,
        color: Colors.transparent,
        //we use Stack(); because we want the effects be on top of each other,
        //  just like layer in photoshop.
        child: Stack(
          children: [
            //blur effect ==> the third layer of stack
            BackdropFilter(
              filter: ImageFilter.blur(
                //sigmaX is the Horizontal blur
                sigmaX: 8.0,
                //sigmaY is the Vertical blur
                sigmaY: 8.0,
              ),
              //we use this container to scale up the blur effect to fit its
              //  parent, without this container the blur effect doesn't appear.
              child: Container(),
            ),
            //gradient effect ==> the second layer of stack
            InkWell(
              onTap: basgit,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.white.withOpacity(0.13)),
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        //begin color
                        Colors.white.withOpacity(0.15),
                        //end color
                        Colors.white.withOpacity(0.05),
                      ]),
                ),
                child: Center(
                    child: Text(
                  yazi,
                  style: const TextStyle(
                      fontFamily: 'Georgia',
                      fontSize: 25,
                      color: white,
                      fontWeight: FontWeight.bold),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
  // @override
  // Widget build(BuildContext context) {
  //   return InkWell(
  //     onTap: basgit,
  //     child: Container(
  //       width: MediaQuery.sizeOf(context).width * 3 / 4,
  //       height: MediaQuery.sizeOf(context).height * 1 /7,
  //       decoration: BoxDecoration(
  //         color: Colors.transparent,
  //         border: Border.all(
  //             color: dblueteam3, width: 3.0, style: BorderStyle.solid),
  //         borderRadius: BorderRadius.circular(20),
  //       ),
  //       child: Center(child: child),
  //     ),
  //   );
  // }
}
