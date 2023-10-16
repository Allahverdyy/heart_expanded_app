import 'package:flutter/material.dart';
import 'package:heart_expanded_app/app/views/view_heart_expanded/heart_expanded_view.dart';
import 'package:heart_expanded_app/app/views/view_heart_screen2/heart_expanded_screen2_view.dart';
import 'package:heart_expanded_app/app/views/view_heart_screen3/heart_expanded_screen3_view.dart';

class HeartScreenOne extends StatelessWidget {
  const HeartScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              flex: 1,
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.1,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment(0.8, 1),
                    colors: <Color>[
                      Color.fromARGB(255, 169, 192, 206),
                      Color.fromARGB(255, 73, 181, 214),
                      Color.fromARGB(255, 79, 174, 252),
                      Color.fromARGB(255, 0, 77, 219),
                    ],
                    tileMode: TileMode.mirror,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Container(
                        padding: EdgeInsets.only(top: 20),
                        child: const Center(
                            child: Text(
                          "FLUTTER",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )),
                      ),
                    ),
                    Expanded(
                        child: Container(
                      padding: EdgeInsets.only(top: 20),
                      child: IconButton(
                        iconSize: MediaQuery.of(context).size.width / 16,
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const ExpandedDemo()));
                        },
                        icon: const Icon(
                          Icons.home,
                          color: Colors.white,
                        ),
                      ),
                    ))
                  ],
                ),
              )
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
                          'assets/images/png/images_flutter_logo.png',
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
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment(0.8, 1),
                                colors: <Color>[
                                  Color.fromARGB(255, 169, 192, 206),
                                  Color.fromARGB(255, 73, 181, 214),
                                  Color.fromARGB(255, 79, 174, 252),
                                  Color.fromARGB(255, 0, 77, 219),
                                ],
                                tileMode: TileMode.mirror,
                              ),
                            ),
                            child: TextButton(
                              onPressed: () {},
                              child: Image.asset(
                                'assets/images/png/images_heart.png',
                                width: MediaQuery.of(context).size.width / 8,
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
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
