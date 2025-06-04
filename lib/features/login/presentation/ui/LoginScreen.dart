import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sana_app/core/shared/widgets/CustomButton.dart';
import 'package:sana_app/core/shared/widgets/CustomFormTextField.dart';
import 'package:sana_app/core/shared/widgets/LabeledTextField.dart';
import 'package:sana_app/core/utils/app_text_styles.dart';
import 'package:sana_app/core/utils/assets.dart';
import 'package:sana_app/core/utils/colors.dart';
import 'package:sana_app/generated/l10n.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final TextEditingController emailOrPhoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 48.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: SvgPicture.asset(AssetsData.logo)),
              SizedBox(height: 32.h),
              Text(S.of(context).login, style: AppTextStyles.h1),
              SizedBox(height: 32.h),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  LabeledTextField(text: S.of(context).emailOrPhone),
                  SizedBox(height: 8.h),
                  CustomTextFormField(
                    svgPrefixIconPath: 'assets/icons/sms.svg',
                    controller: emailOrPhoneController,
                    inputType: TextInputType.text,
                    hintText: S.of(context).enterEmailOrPhone,
                  ),
                ],
              ),
              SizedBox(height: 24.h),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  LabeledTextField(text: S.of(context).password),
                  SizedBox(height: 8.h),
                  CustomTextFormField(
                    controller: passwordController,
                    isPassword: true,
                    svgPrefixIconPath: 'assets/icons/Lock.svg',
                    hintText: S.of(context).enterPassword,
                    inputType: TextInputType.visiblePassword,
                    validation: (val) {
                      if (val == null || val.isEmpty) {
                        return S.of(context).enterPassword;
                      }
                      return null;
                    },
                  ),
                ],
              ),
              SizedBox(height: 8.h),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  S.of(context).forgotPassword,
                  style: AppTextStyles.label.copyWith(color: AppColors.primary),
                ),
              ),
              SizedBox(height: 24.h),
              CustomButton(
                onPressed: () {},
                text: S.of(context).login,
                color: AppColors.primary,
                textColor: Colors.white,
              ),
              SizedBox(height: 16.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    S.of(context).noAccount,
                    style: AppTextStyles.body.copyWith(color: AppColors.grey),
                  ),
                  SizedBox(width: 5.w),
                  Text(
                    S.of(context).createAccount,
                    style: AppTextStyles.body.copyWith(
                      color: AppColors.primary,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
