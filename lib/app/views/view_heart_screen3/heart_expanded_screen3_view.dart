import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:heart_expanded_app/core/constants/images_constants.dart';
import 'package:heart_expanded_app/app/views/widgets/appbar_expanded_widget.dart';
import 'package:heart_expanded_app/app/views/widgets/first_button_widget.dart';
import 'package:heart_expanded_app/app/views/widgets/second_button_widget.dart';
import 'package:heart_expanded_app/app/views/widgets/third_button_widget.dart';
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
                  const Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          FirstButtonWidget(
                            imageColor: Colors.greenAccent,
                          ),
                          SecondButtonWidget(
                            imageColor: Colors.greenAccent,
                          ),
                          ThirdButtonWidget(
                            thirdButtonBg: <Color>[
                              Color.fromARGB(255, 138, 185, 157),
                              Color.fromARGB(255, 67, 212, 145),
                              Color.fromARGB(255, 57, 173, 219),
                              Color.fromARGB(255, 69, 128, 236),
                              Color.fromARGB(255, 3, 91, 126),
                            ],
                            imageColor: Colors.white,
                          ),
                        ],
                      ))
                ],
              ))
        ],
      ),
    );
  }
}
