import 'package:comerciando_app/core/app/constants/app_colors.dart';
import 'package:comerciando_app/core/app/utils/app_screen_sizer.dart';
import 'package:comerciando_app/core/app/utils/app_styles.dart';
import 'package:comerciando_app/core/app/widgets/custom_button_widget.dart';
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
          const SizedBox(height: 16),
          CustomContainerWidget(
            height: sizer.hp(40),
            padding: const EdgeInsets.fromLTRB(32, 32, 32, 64),
            color: Theme.of(context).primaryColor,
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(48),
              topLeft: Radius.circular(48),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Footer',
                  style: AppStyles.w600(24, Colors.white),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        '\$ 100.00',
                        style: AppStyles.w600(24, Colors.white),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Flexible(
                      child: CustomButtonWidget(
                        text: 'Add to cart',
                        center: false,
                        backgroundColor: AppColors.white,
                        textColor: AppColors.black,
                        onTap: () {},
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
