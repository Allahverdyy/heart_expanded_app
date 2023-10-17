import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:heart_expanded_app/app/core/constants/images_constants.dart';
import 'package:heart_expanded_app/app/router/app_router.gr.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 9 / 10,
      color: Colors.black,
      child: TextButton(
        onPressed: () {
          context.router.push(const HeartScreenOneRoute());
        },
        child: Image.asset(flutterHeart,
            color: Colors.purple, width: MediaQuery.of(context).size.width / 8),
      ),
    );
  }
}
