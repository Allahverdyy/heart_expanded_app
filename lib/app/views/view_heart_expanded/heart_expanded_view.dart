import 'package:flutter/material.dart';
import 'package:heart_expanded_app/app/views/view_heart_screen1/heart_expanded_screen1_view.dart';
import 'package:heart_expanded_app/app/views/view_heart_screen2/heart_expanded_screen2_view.dart';
import 'package:heart_expanded_app/app/views/view_heart_screen3/heart_expanded_screen3_view.dart';


class ExpandedDemo extends StatelessWidget {
  const ExpandedDemo({super.key});

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
                color: Colors.purple,
                child: const Center(child: Text("Heart Expanded", )),
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
                        color: Colors.blue,
                        // padding: EdgeInsets.all(40),
                        //dikey yazdırma
                        // padding: EdgeInsets.symmetric(
                        //     horizontal: MediaQuery.of(context).size.width * 0.5),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: MediaQuery.of(context).size.width * 3 / 8,
                            // vertical:
                            //     MediaQuery.of(context).size.height * 0.25
                          ),
                          child: const Center(child: Text("Görsel", style: TextStyle(color: Colors.yellow),)),
                        ),
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
                                  'assets/images/png/images_heart.png', color: Colors.red,width: MediaQuery.of(context).size.width/ 8),
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
