import 'package:flutter/material.dart';

import 'widgets/home_appbar.dart';
import 'widgets/home_categories.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
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
          ],
        ),
      ),
    );
  }
}
