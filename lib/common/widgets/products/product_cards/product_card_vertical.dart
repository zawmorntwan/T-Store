import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';
import '../../../styles/shadows.dart';
import '../../custom_shapes/containers/rounded_container.dart';
import '../../icons/circular_icon.dart';
import '../../images/rounded_image.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = AppHelperFunctions.isDarkMode(context);
    return Container(
      width: 180,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow: [AppShadowStyle.verticalProductShadow],
        borderRadius: BorderRadius.circular(AppSizes.productImageRadius),
        color: darkMode ? AppColors.darkerGrey : AppColors.white,
      ),
      child: Column(
        children: [
          // Thumbnail, Wishlist Button, Discount Tag
          RoundedContainer(
            height: 180,
            padding: const EdgeInsets.all(AppSizes.sm),
            backgroundColor: darkMode ? AppColors.dark : AppColors.light,
            child: Stack(
              children: [
                // Thumbnail Image
                const RoundedImage(
                  imageUrl: AppImages.productImage1,
                  applyImageRadius: true,
                ),

                // Sale Tag
                Positioned(
                  top: 12,
                  child: RoundedContainer(
                    radius: AppSizes.sm,
                    backgroundColor: AppColors.secondary.withOpacity(0.8),
                    padding: const EdgeInsets.symmetric(horizontal: AppSizes.sm, vertical: AppSizes.xs),
                    child: Text(
                      '25%',
                      style: Theme.of(context).textTheme.labelLarge!.apply(color: AppColors.black),
                    ),
                  ),
                ),

                // Favourite Icon Button
                CircularIcon(darkMode: darkMode)
              ],
            ),
          ),
          // Details
        ],
      ),
    );
  }
}
