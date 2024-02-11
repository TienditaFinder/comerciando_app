import 'package:comerciando_app/core/app/utils/app_screen_sizer.dart';
import 'package:comerciando_app/core/app/utils/app_styles.dart';
import 'package:comerciando_app/core/app/widgets/custom_container_widget.dart';
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
          CustomContainerWidget(
            height: sizer.hp(40),
            padding: const EdgeInsets.all(32),
            color: Theme.of(context).primaryColor,
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(48),
              topLeft: Radius.circular(48),
            ),
            child: Text(
              'Footer',
              style: AppStyles.w600(24, Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
