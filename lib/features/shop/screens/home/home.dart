import 'package:flutter/material.dart';

import 'widgets/home_appbar.dart';
import '../../../../utils/constants/sizes.dart';
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
