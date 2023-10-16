import 'package:flutter/material.dart';
import 'package:heart_expanded_app/app/views/view_heart_expanded/heart_expanded_view.dart';
import 'package:heart_expanded_app/app/views/view_heart_screen1/heart_expanded_screen1_view.dart';
import 'package:heart_expanded_app/app/views/view_heart_screen2/heart_expanded_screen2_view.dart';

class HeartScreenThree extends StatelessWidget {
  const HeartScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              flex: 1,
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.5,
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
                child: const Center(
                    child: Text(
                  "FLUTTER BLOC CUBIT",
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
                            'assets/images/png/images_flutter_bloc_cubit_logo.png',
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
                                        const HeartScreenOne()));
                              },
                              child: Image.asset(
                                  'assets/images/png/images_heart.png',
                                  color: Colors.red,
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
                                        const HeartScreenTwo()));
                              },
                              child: Icon(Icons.heart_broken_sharp,
                                  color: Colors.red,
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
                              onPressed: () {},
                              child: Image.asset(
                                  'assets/images/png/images_anatomical_heart2.png',
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
