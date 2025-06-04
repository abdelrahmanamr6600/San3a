import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sana_app/core/utils/app_text_styles.dart';
import 'package:sana_app/core/utils/colors.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    super.key,
    this.svgPrefixIconPath,
    this.validation,
    required this.controller,
    this.suffixFun,
    this.svgSuffixIconPath,
    this.isPassword = false,
    this.labelText,
    this.hintText,
    this.onSubmit,
    required this.inputType,
    this.enabled = true,
    this.disabledTextColor,
    this.enabledTextColor,
    this.onChange,
  });

  final String? hintText;
  final bool isPassword;
  final String? svgPrefixIconPath;
  final String? Function(String?)? validation;
  final TextEditingController controller;
  final Function? suffixFun;
  final String? svgSuffixIconPath;
  final String? labelText;
  final Function? onSubmit;
  final Function? onChange;
  final TextInputType inputType;
  final bool enabled;
  final Color? disabledTextColor;
  final Color? enabledTextColor;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  late bool obscureText;

  @override
  void initState() {
    super.initState();
    obscureText = widget.isPassword;
  }

  void togglePasswordVisibility() {
    setState(() {
      obscureText = !obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: (value) {
        widget.onChange?.call(value);
      },
      enabled: widget.enabled,
      keyboardType: widget.inputType,
      style: TextStyle(
        color:
            widget.enabled
                ? widget.enabledTextColor ?? AppColors.grey
                : widget.disabledTextColor ?? Colors.grey,
        fontSize: 14.sp,
      ),
      onFieldSubmitted: (value) {
        widget.onSubmit?.call(value);
      },
      obscureText: obscureText,
      controller: widget.controller,
      cursorColor: AppColors.primary,
      cursorErrorColor: AppColors.primary,
      decoration: InputDecoration(
        prefixIcon:
            widget.svgPrefixIconPath != null
                ? Padding(
                  padding: EdgeInsets.all(12.w),
                  child: SvgPicture.asset(
                    widget.svgPrefixIconPath!,
                    width: 20.w,
                    height: 20.h,
                    fit: BoxFit.contain,
                  ),
                )
                : null,
        contentPadding: EdgeInsets.symmetric(vertical: 14.h, horizontal: 14.w),
        hintText: widget.hintText,
        hintStyle: AppTextStyles.label.copyWith(color: AppColors.grey),
        filled: true,
        fillColor: Colors.white,
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.grey),
          borderRadius: BorderRadius.circular(10.r),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.grey),
          borderRadius: BorderRadius.circular(10.r),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.grey, width: 1.5.w),
          borderRadius: BorderRadius.circular(10.r),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.grey, width: 1.5.w),
          borderRadius: BorderRadius.circular(10.r),
        ),
        errorStyle: TextStyle(
          color: AppColors.errorColor,
          fontSize: 12.sp,
          fontWeight: FontWeight.w500,
        ),
        suffixIcon:
            widget.isPassword
                ? IconButton(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  onPressed: togglePasswordVisibility,
                  icon: SvgPicture.asset(
                    obscureText
                        ? 'assets/icons/eye-slash.svg'
                        : 'assets/icons/eye.svg',
                    width: 20.w,
                    height: 20.h,
                  ),
                )
                : widget.svgSuffixIconPath != null
                ? IconButton(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  onPressed: () => widget.suffixFun?.call(),
                  icon: SvgPicture.asset(
                    widget.svgSuffixIconPath!,
                    width: 20.w,
                    height: 20.h,
                  ),
                )
                : null,
      ),
      validator: widget.validation,
    );
  }
}
