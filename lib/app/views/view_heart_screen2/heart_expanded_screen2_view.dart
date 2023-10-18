import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:heart_expanded_app/app/core/constants/images_constants.dart';
import 'package:heart_expanded_app/app/core/widgets/appbar_expanded_widget.dart';
import 'package:heart_expanded_app/app/core/widgets/first_button_widget.dart';
import 'package:heart_expanded_app/app/core/widgets/second_button_widget.dart';
import 'package:heart_expanded_app/app/views/view_heart_screen1/heart_expanded_screen1_view.dart';
import 'package:heart_expanded_app/app/views/view_heart_screen3/heart_expanded_screen3_view.dart';

@RoutePage()
class HeartScreenTwoView extends StatelessWidget {
  const HeartScreenTwoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const AppBarExpandedWidgets(
            title: 'FLUTTER FIREBASE',
            appBarColors: <Color>[
              Color.fromARGB(255, 231, 206, 169),
              Color.fromARGB(255, 214, 181, 73),
              Color.fromARGB(255, 252, 191, 79),
              Color.fromARGB(255, 219, 124, 0),
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
                        padding: const EdgeInsets.all(40),
                        child: Image.asset(
                          flutterFirebase,
                          width: MediaQuery.sizeOf(context).width,
                        ),
                        // //dikey yazdırma
                        // // padding: EdgeInsets.symmetric(
                        // //     horizontal: MediaQuery.of(context).size.width * 0.5),
                        // child: Padding(
                        //   padding: EdgeInsets.symmetric(
                        //     horizontal: MediaQuery.of(context).size.width * 3 / 8,
                        //     // vertical:
                        //     //     MediaQuery.of(context).size.height * 0.25
                        //   ),
                        // ),
                      )),
                  Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          const FirstButtonWidget(
                            imageColor: Colors.amber,
                          ),
                          const SecondButtonWidget(
                            secondButtonBg: <Color>[
                              Color.fromARGB(255, 231, 206, 169),
                              Color.fromARGB(255, 214, 181, 73),
                              Color.fromARGB(255, 252, 191, 79),
                              Color.fromARGB(255, 219, 124, 0),
                            ],
                            imageColor: Colors.white,
                          ),
                          Expanded(
                              child: Container(
                            width: double.infinity,
                            height: MediaQuery.of(context).size.height * 9 / 10,
                            color: Colors.black,
                            child: TextButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        const HeartScreenThreeView()));
                              },
                              child: Image.asset(flutterAnatomicalHeart,
                                  color: Colors.amber[600],
                                  width: MediaQuery.of(context).size.width / 8),
                            ),
                          ))
                        ],
                      ))
                ],
              ))
        ],
      ),
    );
  }
}
