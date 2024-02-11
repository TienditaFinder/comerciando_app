import 'package:comerciando_app/core/app/utils/app_screen_sizer.dart';
import 'package:comerciando_app/core/app/utils/app_styles.dart';
import 'package:flutter/material.dart';

class ComponentsTestPage extends StatelessWidget {
  const ComponentsTestPage({super.key});

  @override
  Widget build(BuildContext context) {
    final sizer = ScreenSizer.of(context);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: sizer.wp(10),
              vertical: sizer.hp(20),
            ),
            color: Theme.of(context).primaryColor,
            child: Text(
              'Footer',
              style: AppStyles.w600(14, Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
