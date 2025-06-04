import 'package:flutter/material.dart';
import 'package:sana_app/core/utils/app_text_styles.dart';
import 'package:sana_app/core/utils/colors.dart';

class LabeledTextField extends StatelessWidget {
  final String text;
  final TextStyle? style;
  const LabeledTextField({required this.text, super.key, this.style});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          style ??
          AppTextStyles.label.copyWith(
            color: AppColors.labelColor,
            fontWeight: FontWeight.w500,
          ),
    );
  }
}
