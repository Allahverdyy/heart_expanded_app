import 'package:flutter/material.dart';

class BodyContainerWidget extends StatelessWidget {
  final List<Widget> paragraph;
  final List<Color> containercolor;

  const BodyContainerWidget({
    super.key,
    required this.paragraph,
    required this.containercolor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 3 / 5 - 1,
      margin: const EdgeInsets.only(
        right: 15,
      ),
      height: MediaQuery.of(context).size.height * 2 / 4,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: containercolor),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, children: paragraph),
      ),
    );
  }
}
