import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:heart_expanded_app/app/router/app_router.gr.dart';

@RoutePage()
class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}
  
class _SplashViewState extends State<SplashView> {

  @override
  void initState(){
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(const Duration(seconds: 5),(){
      context.router.push(const HomeRoute());
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.sizeOf(context).width,
        decoration:  const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: <Color>[
              Color.fromARGB(255, 143, 202, 230),
                Colors.blueAccent,
                Color.fromARGB(255, 0, 44, 190)
            ],
          )
        ),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.sizeOf(context).height/3,
              ),
              const Icon(Icons.flutter_dash_sharp, size: 75,),
              const SizedBox(
                height: 0,
              ),
              const Text('FLUTTERS NOTEBOOOK', style: TextStyle(fontSize: 25),)
            ],
          ),
        ),
      )
    );
  }
}

