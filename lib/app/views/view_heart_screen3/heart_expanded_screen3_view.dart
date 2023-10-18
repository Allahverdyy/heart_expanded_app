import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:heart_expanded_app/app/core/constants/images_constants.dart';
import 'package:heart_expanded_app/app/core/widgets/appbar_expanded_widget.dart';
import 'package:heart_expanded_app/app/core/widgets/button_widget.dart';
import 'package:heart_expanded_app/app/router/app_router.gr.dart';
import 'package:heart_expanded_app/app/views/view_heart_screen1/heart_expanded_screen1_view.dart';
import 'package:heart_expanded_app/app/views/view_heart_screen2/heart_expanded_screen2_view.dart';

@RoutePage()
class HeartScreenThreeView extends StatelessWidget {
  const HeartScreenThreeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const AppBarExpandedWidgets(
            title: 'FLUTTER BLOC CUBIT',
            appBarColors: <Color>[
              Color.fromARGB(255, 138, 185, 157),
              Color.fromARGB(255, 67, 212, 145),
              Color.fromARGB(255, 57, 173, 219),
              Color.fromARGB(255, 69, 128, 236),
              Color.fromARGB(255, 3, 91, 126),
            ],
          ),
          Expanded(
              flex: 9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                      flex: 3,
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.90,
                        color: Colors.white,
                        // padding: EdgeInsets.all(40),
                        //dikey yazdırma
                        // padding: EdgeInsets.symmetric(
                        //     horizontal: MediaQuery.of(context).size.width * 0.5),
                        // child: Padding(
                        //   padding: EdgeInsets.symmetric(
                        //     horizontal:
                        //         MediaQuery.of(context).size.width * 3 / 8,
                        //     // vertical:
                        //     //     MediaQuery.of(context).size.height * 0.25
                        //   ),
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Image.asset(
                            flutterBloc,
                            width: MediaQuery.sizeOf(context).width,
                          ),
                        ),
                        // ),
                      )),
                  Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Expanded(
                              child: Container(
                            width: double.infinity,
                            height: MediaQuery.of(context).size.height * 9 / 10,
                            color: Colors.black,
                            child: TextButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        const HeartScreenOneView()));
                              },
                              child: Image.asset(flutterHeart,
                                  color: Colors.greenAccent,
                                  width: MediaQuery.of(context).size.width / 8),
                            ),
                          )),
                          Expanded(
                              child: Container(
                            width: double.infinity,
                            height: MediaQuery.of(context).size.height * 9 / 10,
                            color: Colors.black,
                            child: TextButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        const HeartScreenTwoView()));
                              },
                              child: Icon(Icons.heart_broken_sharp,
                                  color: Colors.greenAccent,
                                  size: MediaQuery.sizeOf(context).width / 8),
                            ),
                          )),
                          Expanded(
                              child: Container(
                            width: double.infinity,
                            height: MediaQuery.of(context).size.height * 9 / 10,
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment(0.8, 1),
                                colors: <Color>[
                                  Color.fromARGB(255, 138, 185, 157),
                                  Color.fromARGB(255, 67, 212, 145),
                                  Color.fromARGB(255, 57, 173, 219),
                                  Color.fromARGB(255, 69, 128, 236),
                                  Color.fromARGB(255, 3, 91, 126),
                                ],
                                tileMode: TileMode.mirror,
                              ),
                            ),
                            child: TextButton(
                              onPressed: () {
                                context.router
                                    .push(const HeartScreenTwoRoute());
                              },
                              child: Image.asset(flutterAnatomicalHeart,
                                  color: Colors.white,
                                  width: MediaQuery.sizeOf(context).width / 8),
                            ),
                          )),
                        ],
                      ))
                ],
              ))
        ],
      ),
    );
  }
}
