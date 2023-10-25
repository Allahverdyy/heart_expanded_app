import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:heart_expanded_app/app/router/app_router.gr.dart';
import 'package:heart_expanded_app/app/views/widgets/home_container_widget.dart';
import 'package:heart_expanded_app/core/constants/colors_constants.dart';
import 'package:heart_expanded_app/core/constants/images_constants.dart';

@RoutePage()
class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _currentIndex = 0;
  int _currentCharIndex = 0;

  final List<String> _strings = [
    "FLUTTER'S NOTEBOOKS",
    "FLUTTER'S ROAD MAP",
  ];

  @override
  void initState() {
    super.initState();
    _typeWritingAnimation();
  }

  void _typeWritingAnimation() {
    if (_currentCharIndex < _strings[_currentIndex].length) {
      setState(() {
        _currentCharIndex++;
      });
    } else {
      setState(() {
        _currentIndex = (_currentIndex + 1) % _strings.length;
        _currentCharIndex = 0;
      });
    }

    Future.delayed(const Duration(milliseconds: 150), () {
      _typeWritingAnimation();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image:
                DecorationImage(image: AssetImage(homebg2), fit: BoxFit.cover)),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Image.asset(
              flutterBg,
              width: MediaQuery.sizeOf(context).width / 2,
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
              _strings[_currentIndex].substring(0, _currentCharIndex),
              style: const TextStyle(
                color: white,
                fontSize: 25,
                fontFamily: 'Georgia',
                fontWeight: FontWeight.bold,
                ),
              ),
            ),
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
              en: MediaQuery.sizeOf(context).width * 3 / 4,
              uzun: MediaQuery.sizeOf(context).height * 1 / 7,
              yazi: 'FLUTTER',
            ),
            const SizedBox(
              height: 30,
            ),
            HomeContainerWidget(
              basgit: () {
                context.router.push(const HeartScreenTwoRoute());
              },
              en: MediaQuery.sizeOf(context).width * 3 / 4,
              uzun: MediaQuery.sizeOf(context).height * 1 / 7,
              yazi: 'FIREBASE',
            ),
            const SizedBox(
              height: 30,
            ),
            HomeContainerWidget(
              basgit: () {
                context.router.push(const HeartScreenThreeRoute());
              },
              en: MediaQuery.sizeOf(context).width * 3 / 4,
              uzun: MediaQuery.sizeOf(context).height * 1 / 7,
              yazi: 'BLOC CUBIT',
            ),
          ],
        ),
      ),
    );
  }
}
