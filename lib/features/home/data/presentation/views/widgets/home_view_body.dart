import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/text_styles.dart';
import 'package:bookly_app/features/home/data/presentation/views/widgets/best_seller_item.dart';
import 'package:bookly_app/features/home/data/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/data/presentation/views/widgets/custom_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomAppBar(),
                const CustomListView(),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  "Best Seller",
                  style: AppStyles.textStyle18(context),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
        BestSellerListView()
      ],
    );
  }
}

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.only(left: 30, bottom: 20),
          child: BestSellerItem(),
        );
      },
    );
  }
}
