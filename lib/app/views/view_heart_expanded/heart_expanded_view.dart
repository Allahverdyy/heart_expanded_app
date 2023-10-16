import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()

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
                              onPressed: () {},
                              child: Image.asset(
                                  'assets/images/png/images_heart.png'),
                            ),
                          )),
                          Expanded(
                              child: Container(
                            width: double.infinity,
                            height: MediaQuery.of(context).size.height * 9 / 10,
                            color: Colors.black,
                            child: TextButton(
                              onPressed: () {},
                              child: Image.asset(
                                  'assets/images/png/images_anatomical_heart.png'),
                            ),
                          )),
                          Expanded(
                              child: Container(
                            width: double.infinity,
                            height: MediaQuery.of(context).size.height * 9 / 10,
                            color: Colors.black,
                            child: TextButton(
                              onPressed: () {},
                              child: const Icon(
                                Icons.heart_broken_sharp,
                                color: Colors.red,
                              ),
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
