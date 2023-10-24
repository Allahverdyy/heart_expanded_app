import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:heart_expanded_app/app/router/app_router.gr.dart';
import 'package:heart_expanded_app/core/constants/colors_constants.dart';
import 'package:heart_expanded_app/core/constants/images_constants.dart';

class AppBarExpandedWidgets extends StatelessWidget {
  final List<Color> appBarColors;
  final String title;
  const AppBarExpandedWidgets({
    super.key,
    required this.title,
    required this.appBarColors,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.1,
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage(homebg1), fit: BoxFit.none),
            // gradient: LinearGradient(
            //   begin: Alignment.topLeft,
            //   end: const Alignment(0.8, 1),
            //   colors: appBarColors,
            //   tileMode: TileMode.mirror,
            // ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  padding: const EdgeInsets.only(top: 20),
                  child: Center(
                      child: Text(
                    title,
                    // "FLUTTER'S ROAD",
                    style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )),
                ),
              ),
              Expanded(
                  child: Container(
                      padding: const EdgeInsets.only(top: 20),
                      child: InkWell(
                        onTap: () {
                          context.router.push(const HomeRoute());
                        },
                        child: Icon(Icons.home_rounded, size: 50, color: blueteam1,),
                      )))
            ],
          ),
        ));
  }
}
