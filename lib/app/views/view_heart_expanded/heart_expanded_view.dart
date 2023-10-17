import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:heart_expanded_app/app/core/constants/images_constants.dart';
import 'package:heart_expanded_app/app/core/widgets/appbar_expanded_widget.dart';
import 'package:heart_expanded_app/app/router/app_router.gr.dart';
import 'package:heart_expanded_app/app/views/view_heart_screen1/heart_expanded_screen1_view.dart';
import 'package:heart_expanded_app/app/views/view_heart_screen2/heart_expanded_screen2_view.dart';
import 'package:heart_expanded_app/app/views/view_heart_screen3/heart_expanded_screen3_view.dart';

@RoutePage()  
class ExpandedDemoView extends StatelessWidget {
   ExpandedDemoView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
           const AppBarExpandedWidgets(
            title: "FLUTTER'S NOTEBOOK",
            appBarColors: 
              <Color>[
                Color.fromARGB(255, 227, 190, 248),
                Color.fromARGB(255, 215, 145, 255),
                Color.fromARGB(255, 185, 1, 241),
                Color.fromARGB(255, 172, 43, 247),
                Color.fromARGB(255, 129, 0, 214),
                Color.fromARGB(255, 69, 0, 116),
                Color.fromARGB(255, 0, 0, 0),
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
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment(0.8, 1),
                            colors: <Color>[
                              Color.fromARGB(255, 145, 184, 255),
                              Color.fromARGB(255, 224, 137, 250),
                              Color.fromARGB(255, 199, 43, 247),
                              Color.fromARGB(255, 139, 73, 214),
                              Color.fromARGB(255, 120, 0, 219),
                            ],
                            tileMode: TileMode.mirror,
                          ),
                        ),
                        // padding: EdgeInsets.all(40),
                        //dikey yazdırma
                        // padding: EdgeInsets.symmetric(
                        //     horizontal: MediaQuery.of(context).size.width * 0.5),
                        child: Image.asset(
                          flutterBg,
                          fit: BoxFit.fitHeight,
                        ),
                      )
                    ),
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
                                context.router.push(const HeartScreenOneRoute());
                              },
                              child: Image.asset(flutterHeart,
                                  color: Colors.purple,
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
                                  color: Colors.purple,
                                  size: MediaQuery.sizeOf(context).width / 8),
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
                                        const HeartScreenThreeView()));
                              },
                              child: Image.asset(flutterAnatomicalHeart,
                                  color: Colors.purple,
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


