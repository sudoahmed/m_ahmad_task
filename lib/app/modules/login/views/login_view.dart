import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:m_ahmad_task/app/core/components/dialogs/wait_dialog.dart';
import 'package:m_ahmad_task/app/core/components/widgets/text_field_component.dart';
import 'package:m_ahmad_task/app/core/constants/colors.dart';
import 'package:m_ahmad_task/app/core/constants/endpoints.dart';
import 'package:m_ahmad_task/app/core/services/api_service.dart';
import 'package:m_ahmad_task/app/core/utils/spacing.dart';
import 'package:m_ahmad_task/app/core/utils/validators.dart';
import 'package:m_ahmad_task/app/routes/app_pages.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});
  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.secondary,
        toolbarHeight: 153.h,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 0.7.sw,
              child: Text(
                maxLines: 2,
                'Login to your Account',
                style:
                    textTheme.headlineMedium!.copyWith(color: AppColors.white),
              ),
            ),
            VerticalSpacing(8.h),
            Text(
              'Start Your Journey With Us.',
              style: textTheme.headlineSmall!
                  .copyWith(color: AppColors.flamingo, fontFamily: 'Unbounded'),
            ),
          ],
        ),
      ),
      body: Form(
        key: controller.loginFormKey,
        child: Container(
          padding: EdgeInsets.all(24.sp),
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextFieldComponent(
                  textController: controller.emailController,
                  focusNode: controller.emailFocusNode,
                  nextFocusNode: controller.passwordFocusNode,
                  validator: (value) => Validators.emailValidator(value),
                  validationMode: AutovalidateMode.onUserInteraction,
                  hintText: 'Email',
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                ),
                VerticalSpacing(15.h),
                TextFieldComponent(
                  textController: controller.passwordController,
                  focusNode: controller.passwordFocusNode,
                  validator: (value) => Validators.passwordValidator(value),
                  validationMode: AutovalidateMode.onUserInteraction,
                  hintText: 'Password',
                  keyboardType: TextInputType.visiblePassword,
                  isPassword: true,
                ),
                VerticalSpacing(26.h),
                SizedBox(
                  width: 1.sw,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                        height: 20,
                        child: Obx(
                          () => Checkbox(
                            value: controller.isRememberMe.value,
                            onChanged: (value) {
                              controller.toggleRememberMe();
                            },
                          ),
                        ),
                      ),
                      HorizontalSpacing(9.w),
                      Text(
                        'Remember Me',
                        style: textTheme.bodySmall!.copyWith(
                            color: AppColors.slateGray,
                            fontWeight: FontWeight.w500),
                      ),
                      const Spacer(),
                      CupertinoButton(
                        padding: EdgeInsets.zero,
                        minSize: 0.0001,
                        onPressed: () {},
                        child: Text(
                          'Forgot password?',
                          style: textTheme.bodySmall!.copyWith(
                              color: AppColors.flamingo,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                ),
                VerticalSpacing(39.h),
                CupertinoButton(
                    padding: EdgeInsets.zero,
                    minSize: 0.0001,
                    child: Container(
                      width: 1.sw,
                      height: 48,
                      decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.circular(89.r),
                      ),
                      child: Center(
                        child: Text(
                          'Login',
                          style: textTheme.titleMedium!.copyWith(
                              color: AppColors.white,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                    onPressed: () {
                      controller.login(
                        context: context,
                        onSuccess: (responseBody) {},
                        onError: () {},
                      );
                    }),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 22.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Don\'t have an account?',
              style: textTheme.bodyLarge!.copyWith(
                  color: AppColors.slateGray, fontWeight: FontWeight.w500),
            ),
            HorizontalSpacing(8.w),
            CupertinoButton(
              padding: EdgeInsets.zero,
              minSize: 0.0001,
              onPressed: () {},
              child: Text(
                'Sign Up',
                style: textTheme.bodyLarge!.copyWith(
                    color: AppColors.primary, fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
