import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:heart_expanded_app/app/views/view_heart_expanded/heart_expanded_view.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      // statusBar kaldırmak için
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ExpandedDemo(),
    );
  }
}