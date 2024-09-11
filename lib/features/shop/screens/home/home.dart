import 'package:flutter/material.dart';

import '../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../common/widgets/products/product_cards/product_card_vertical.dart';
import '../../../../utils/constants/image_strings.dart';
import 'widgets/home_appbar.dart';
import 'widgets/home_categories.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'widgets/promo_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  // App Bar
                  HomeAppBar(),
                  SizedBox(
                    height: AppSizes.spaceBtwSections,
                  ),

                  // Search Bar
                  SearchContainer(
                    text: 'Search in store',
                  ),
                  SizedBox(
                    height: AppSizes.spaceBtwSections,
                  ),

                  // Categories Section
                  Column(
                    children: [
                      // Heading
                      Padding(
                        padding: EdgeInsets.only(
                          left: AppSizes.defaultSpace,
                        ),
                        child: SectionHeading(
                          title: 'Popular Categories',
                          textColor: AppColors.white,
                          showActionButton: false,
                        ),
                      ),
                      SizedBox(
                        height: AppSizes.spaceBtwItems,
                      ),

                      // Categories
                      HomeCategories(),
                    ],
                  )
                ],
              ),
            ),

            // Body
            Padding(
              padding: const EdgeInsets.all(AppSizes.defaultSpace),
              child: Column(
                children: [
                  const PromoSlider(
                    banners: [
                      AppImages.promotionBanner1,
                      AppImages.promotionBanner2,
                      AppImages.promotionBanner3,
                      AppImages.promotionBanner4,
                      AppImages.promotionBanner5,
                      AppImages.promotionBanner6,
                      AppImages.promotionBanner7,
                      AppImages.promotionBanner8,
                    ],
                  ),
                  const SizedBox(
                    height: AppSizes.spaceBtwSections,
                  ),

                  // Heading
                  const SectionHeading(title: 'Popular Products'),
                  const SizedBox(
                    height: AppSizes.spaceBtwItems,
                  ),

                  // Popular products
                  GridLayout(
                    itemCount: 2,
                    itemBuilder: (_, index) => const ProductCardVertical(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
