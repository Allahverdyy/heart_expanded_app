import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:heart_expanded_app/app/core/constants/images_constants.dart';
import 'package:heart_expanded_app/app/core/widgets/appbar_expanded_widget.dart';
import 'package:heart_expanded_app/app/core/widgets/first_button_widget.dart';
import 'package:heart_expanded_app/app/core/widgets/second_button_widget.dart';
import 'package:heart_expanded_app/app/core/widgets/third_button_widget.dart';

@RoutePage()
class HeartScreenOneView extends StatelessWidget {
  const HeartScreenOneView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const AppBarExpandedWidgets(
            title: 'FLUTTER',
            appBarColors: <Color>[
              Color.fromARGB(255, 169, 192, 206),
              Color.fromARGB(255, 73, 181, 214),
              Color.fromARGB(255, 79, 174, 252),
              Color.fromARGB(255, 0, 77, 219),
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
                        child: Image.asset(
                          flutter,
                          width: MediaQuery.sizeOf(context).width,
                        ),
                        color: Colors.white,
                        padding: EdgeInsets.all(40),
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
                  const Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          FirstButtonWidget(
                            firstButtonBg: <Color>[
                              Color.fromARGB(255, 169, 192, 206),
                              Color.fromARGB(255, 73, 181, 214),
                              Color.fromARGB(255, 79, 174, 252),
                              Color.fromARGB(255, 0, 77, 219),
                            ],
                            imageColor: Colors.white,
                          ),
                          SecondButtonWidget(
                            imageColor: Colors.blue,
                          ),
                          ThirdButtonWidget(
                            imageColor: Colors.blue,
                          )
                        ],
                      ))
                ],
              ))
        ],
      ),
    );
  }
}
