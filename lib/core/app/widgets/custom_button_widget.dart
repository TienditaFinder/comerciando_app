import 'package:comerciando_app/core/app/constants/app_colors.dart';
import 'package:comerciando_app/core/app/utils/app_styles.dart';
import 'package:flutter/material.dart';

enum ApButtonType {
  small,
  medium,
  large,
}

class CustomButtonWidget extends StatelessWidget {
  CustomButtonWidget({
    super.key,
    required this.text,
    this.textColor,
    this.loadingText = 'Cargando...',
    this.isLoading = false,
    this.type = ApButtonType.medium,
    this.center = true,
    this.onTap,
    this.prefixIcon,
    this.customStyle,
    this.borderColor,
    this.suffixIcon,
    this.customPadding,
    this.radius = 32,
    this.iconsSpace = 16,
    this.maxLines,
    this.customChildPadding,
    this.backgroundColor = AppColors.lightPrimary,
  })  : style = type == ApButtonType.small
            ? AppStyles.w700(16)
            : type == ApButtonType.medium
                ? AppStyles.w700(16)
                : type == ApButtonType.large
                    ? AppStyles.w700(16)
                    : AppStyles.w700(16),
        padding = customChildPadding ??
            (type == ApButtonType.small
                ? 8
                : type == ApButtonType.medium
                    ? 10
                    : 14);
  final void Function()? onTap;
  final String text;
  final String loadingText;
  final bool isLoading;
  final ApButtonType type;
  final Color backgroundColor;
  final Color? textColor;
  final Color? borderColor;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool center;

  final double padding;
  final double radius;
  final TextStyle style;
  final TextStyle? customStyle;
  final double iconsSpace;
  final EdgeInsets? customPadding;
  final int? maxLines;
  final double? customChildPadding;

  @override
  Widget build(BuildContext context) {
    final label = Text(
      isLoading ? loadingText : text,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: customStyle ??
          style.copyWith(
            color: textColor ?? Colors.white,
          ),
      textAlign: TextAlign.center,
    );
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0.5,
        backgroundColor: backgroundColor,
        padding: customPadding ??
            EdgeInsets.symmetric(
              horizontal: 32,
              vertical: padding,
            ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
          side: borderColor != null
              ? BorderSide(
                  color: borderColor!,
                )
              : BorderSide.none,
        ),
      ),
      onPressed: isLoading ? null : onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: padding),
        child: Row(
          mainAxisSize: center ? MainAxisSize.max : MainAxisSize.min,
          mainAxisAlignment:
              center ? MainAxisAlignment.center : MainAxisAlignment.start,
          children: [
            if (prefixIcon != null) ...[
              prefixIcon!,
              SizedBox(width: iconsSpace),
            ],
            Flexible(child: label),
            const SizedBox(height: 8),
            if (isLoading)
              const SizedBox(
                height: 20,
                width: 20,
                child: CircularProgressIndicator(),
              ),
            if (suffixIcon != null) ...[
              SizedBox(width: iconsSpace),
              suffixIcon!,
            ],
          ],
        ),
      ),
    );
  }
}
