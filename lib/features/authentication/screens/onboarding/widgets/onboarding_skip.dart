import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: AppDeviceUtils.getAppBarHeight(),
      right: AppSizes.defaultSpace,
      child: TextButton(
        onPressed: () {},
        child: const Text('Skip'),
      ),
    );
  }
}