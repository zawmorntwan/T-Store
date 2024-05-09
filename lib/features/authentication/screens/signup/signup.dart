import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:t_store/common/widgets/login_signup/form_divider.dart';
import 'package:t_store/common/widgets/login_signup/social_buttons.dart';
import 'package:t_store/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(
            AppSizes.defaultSpace,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Text(
                AppTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: AppSizes.spaceBtwSections,
              ),

              // Form
              const SignupForm(),
              const SizedBox(
                height: AppSizes.spaceBtwSections,
              ),

              // Divider
              FormDivider(
                dividerText: AppTexts.orSignUpWith.capitalize!,
              ),
              const SizedBox(
                height: AppSizes.spaceBtwSections,
              ),

              // Social Buttons
              const SocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
