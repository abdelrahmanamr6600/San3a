import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sana_app/core/utils/app_text_styles.dart';
import 'package:sana_app/core/utils/colors.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Color color;

  final String text;
  final double? height;
  final double? width;
  final double? redius;
  final Color? textColor;
  final Color? borderColor;

  const CustomButton({
    super.key,
    required this.onPressed,
    required this.text,
    required this.color,
    this.height,
    this.width,
    this.redius,
    this.textColor,
    this.borderColor,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      height: height ?? 50.h,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(color),
          overlayColor: WidgetStateProperty.all(AppColors.primary),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(redius ?? 10.0.r),
              side: BorderSide(
                color: borderColor ?? Colors.transparent,
                width: 1,
              ),
            ),
          ),
        ),
        child: Text(
          text,
          style: AppTextStyles.button.copyWith(color: textColor),
        ),
      ),
    );
  }
}
