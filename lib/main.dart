import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:heart_expanded_app/app/router/app_router.dart';


void main() {
  SystemChrome.setSystemUIOverlayStyle(
      // statusBar kaldırmak için
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp( MyApp());
}
class MyApp extends StatelessWidget {
  final _appRouter = AppRouter();
   MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(            
      debugShowCheckedModeBanner: false,
      routerConfig: _appRouter.config(),         
    );            
  }
}