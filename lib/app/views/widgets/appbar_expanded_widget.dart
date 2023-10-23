import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:heart_expanded_app/app/router/app_router.gr.dart';

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
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: const Alignment(0.8, 1),
              colors: appBarColors,
              tileMode: TileMode.mirror,
            ),
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
                        child: Image.asset('assets/images/png/images_home.png' , width: MediaQuery.sizeOf(context).width*3/5, height: MediaQuery.sizeOf(context).width*3/5,),
                      )))
            ],
          ),
        ));
  }
}
