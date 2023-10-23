import 'package:flutter/material.dart';
import 'package:heart_expanded_app/core/constants/colors_constants.dart';

class HomeContainerWidget extends StatelessWidget {
  final void Function()? basgit;
  final Widget? child;
  const HomeContainerWidget({
    super.key,
    this.basgit,
    this.child
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: basgit,
      child: Container(
        width: MediaQuery.sizeOf(context).width * 3 / 4,
        height: MediaQuery.sizeOf(context).height * 1 /7,
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(
              color: dblueteam3, width: 3.0, style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(child: child),
      ),
    );
  }
}
