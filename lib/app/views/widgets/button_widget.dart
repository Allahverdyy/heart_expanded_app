// import 'package:flutter/material.dart';
// class ButtonWidget extends StatelessWidget {
//   final List<Color> buttonColors;
//   final Color? colorButton;
//   final void Function()? road;
//   final String? imageBg;
//   final Widget? widget;
//   const ButtonWidget({
//     super.key,
//     this.buttonColors = const <Color>[
//                               Color.fromARGB(255, 145, 184, 255),
//                               Color.fromARGB(255, 224, 137, 250),
//                               Color.fromARGB(255, 199, 43, 247),
//                               Color.fromARGB(255, 139, 73, 214),
//                               Color.fromARGB(255, 120, 0, 219),
//                             ],
//     this.road,
//     this.imageBg,
//     this.colorButton,
//     this.widget = const Icon(Icons.heart_broken_outlined),
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//         child: Container(
//       width: double.infinity,
//       height: MediaQuery.of(context).size.height * 9 / 10,
//       decoration:  BoxDecoration(
//         gradient: LinearGradient(
//           begin: Alignment.topLeft,
//           end: const Alignment(0.8, 1),
//           colors:buttonColors,
//           tileMode: TileMode.mirror,
//         ),
//       ),
//       child: TextButton(onPressed: () {
        
//       }, child: widget,
//       ),
//     ));
//   }
// }