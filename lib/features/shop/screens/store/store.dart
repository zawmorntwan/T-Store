import 'package:flutter/material.dart';

import '../../../../common/widgets/appbar/tabbar.dart';
import '../../../../utils/constants/enums.dart';
import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/custom_shapes/containers/rounded_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/images/circular_image.dart';
import '../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../common/widgets/products/cart/cart_icon.dart';
import '../../../../common/widgets/texts/brand_title_with_verify_icon.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: CustomAppBar(
          title: Text(
            'Store',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [
            CartIcon(
              onPressed: () {},
            )
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) => [
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              backgroundColor: AppHelperFunctions.isDarkMode(context) ? AppColors.black : AppColors.white,
              expandedHeight: 440,
              flexibleSpace: Padding(
                padding: const EdgeInsets.all(
                  AppSizes.defaultSpace,
                ),
                child: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    // Search Bar
                    const SizedBox(height: AppSizes.spaceBtwItems),
                    const SearchContainer(
                      text: 'Search in store',
                      showBorder: true,
                      showBackground: false,
                      padding: EdgeInsets.zero,
                    ),
                    const SizedBox(height: AppSizes.spaceBtwSections),

                    // Featured Brands
                    SectionHeading(
                      title: 'Featured Brands',
                      onPressed: () {},
                    ),
                    const SizedBox(height: AppSizes.spaceBtwItems / 1.5),

                    // Grid
                    GridLayout(
                      itemCount: 4,
                      mainAxisExtent: 80,
                      itemBuilder: (_, index) {
                        return GestureDetector(
                          onTap: () {},
                          child: RoundedContainer(
                            padding: const EdgeInsets.all(AppSizes.sm),
                            showBorder: true,
                            backgroundColor: Colors.transparent,
                            child: Row(
                              children: [
                                // -- Icon
                                Flexible(
                                  child: CircularImage(
                                    imagePath: AppImages.clothIcon,
                                    backgroundColor: Colors.transparent,
                                    overleyColor: AppHelperFunctions.isDarkMode(context) ? AppColors.white : AppColors.black,
                                  ),
                                ),
                                const SizedBox(height: AppSizes.spaceBtwItems / 2),

                                // -- Text
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      const BrandTitleWithVerifiedIcon(
                                        title: 'Nike',
                                        brandTextSizes: TextSizes.large,
                                      ),
                                      Text(
                                        '256 products',
                                        overflow: TextOverflow.ellipsis,
                                        style: Theme.of(context).textTheme.labelMedium,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),

              // Tabs
              bottom: AppTabBar(
                tabs: [
                  Tab(
                    child: Text(
                      'All',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Sports',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Furnitures',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Electronics',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Clothes',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                ],
              ),
            ),
          ],

          // Body
          body: const TabBarView(
            children: [
              Padding(
                padding: EdgeInsets.all(AppSizes.defaultSpace),
                child: Column(
                  children: [
                    // Brands

                    // Products You May Like
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
