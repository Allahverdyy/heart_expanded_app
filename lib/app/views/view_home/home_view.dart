import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:heart_expanded_app/app/router/app_router.gr.dart';
import 'package:heart_expanded_app/app/views/widgets/home_container_widget.dart';
import 'package:heart_expanded_app/core/constants/colors_constants.dart';

@RoutePage()
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [blueteam2, blueteam3, blueteam4])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              const Center(
                  child: Text(
                "FLUTTER'S NOTEBOOK",
                style: TextStyle(
                    color: white, fontSize: 25, fontFamily: 'Georgia'),
              )),
              const SizedBox(
                height: 30,
              ),
              // const Padding(
              //   padding: EdgeInsets.all(26.0),
              //   child: SearchBar(

              //   ),
              // ),
              const SizedBox(
                height: 30,
              ),
              HomeContainerWidget(
                basgit: () {
                  context.router.push(const HeartScreenOneRoute());
                },
                child: const Text(
                  'FLUTTER',
                  style: TextStyle(
                      color: white, fontSize: 25, fontFamily: 'Georgia'),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              HomeContainerWidget(
                basgit: () {
                  context.router.push(const HeartScreenTwoRoute());
                },
                child: const Text(
                  'FIREBASE',
                  style: TextStyle(
                      color: white, fontSize: 25, fontFamily: 'Georgia'),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              HomeContainerWidget(
                basgit: () {
                  context.router.push(const HeartScreenThreeRoute());
                },
                child: const Text(
                  'BLOC CUBIT',
                  style: TextStyle(
                      color: white, fontSize: 25, fontFamily: 'Georgia'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
