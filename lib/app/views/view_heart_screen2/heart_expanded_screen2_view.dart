import 'package:flutter/material.dart';
import 'package:heart_expanded_app/app/views/view_heart_expanded/heart_expanded_view.dart';
import 'package:heart_expanded_app/app/views/view_heart_screen1/heart_expanded_screen1_view.dart';
import 'package:heart_expanded_app/app/views/view_heart_screen3/heart_expanded_screen3_view.dart';

class HeartScreenTwo extends StatelessWidget {
  const HeartScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              flex: 1,
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment(0.8, 1),
                    colors: <Color>[
                      Color.fromARGB(255, 231, 206, 169),
                      Color.fromARGB(255, 214, 181, 73),
                      Color.fromARGB(255, 252, 191, 79),
                      Color.fromARGB(255, 219, 124, 0),
                    ],
                    tileMode: TileMode.mirror,
                  ),
                ),
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.5,
                child: const Center(
                    child: Text(
                  "FLUTTER FIREBASE",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )),
              )),
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
                          'assets/images/png/images_flutter_firebase_logo.png',
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
                                        const HeartScreenOne()));
                              },
                              child: Image.asset(
                                'assets/images/png/images_heart.png',
                                color: Colors.red,width: MediaQuery.of(context).size.width/ 8,
                              ),
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
                                  Color.fromARGB(255, 231, 206, 169),
                                  Color.fromARGB(255, 214, 181, 73),
                                  Color.fromARGB(255, 252, 191, 79),
                                  Color.fromARGB(255, 219, 124, 0),
                                ],
                                tileMode: TileMode.mirror,
                              ),
                            ),
                            child: TextButton(
                              onPressed: () {
                              },
                              child: Icon(Icons.heart_broken_sharp,
                                  color: Colors.white,
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
                                        const HeartScreenThree()));
                              },
                             child: Image.asset(
                                  'assets/images/png/images_anatomical_heart2.png', color: Colors.red,width: MediaQuery.of(context).size.width/ 8),
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
