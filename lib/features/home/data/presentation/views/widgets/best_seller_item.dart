import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 47),
      child: Row(
        children: [
          SizedBox(
            height: 100,
            child: AspectRatio(
              aspectRatio: 2.7 / 4,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: const DecorationImage(
                      image: AssetImage(Assets.imagesBook1), fit: BoxFit.fill),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * 0.5,
                  child: Text(
                    "Harry Potter and the Goblet of Fire",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: AppStyles.textStyle20(context)
                        .copyWith(fontFamily: kGtSectraFine, height: 0),
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                Text(
                  "J.K. Rowling",
                  style: AppStyles.textStyle14(context),
                ),
                const SizedBox(
                  height: 3,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "19.99 €",
                      style: AppStyles.textStyle20(context)
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        const Icon(
                          FontAwesomeIcons.solidStar,
                          color: Color(0xFFFFDD4F),
                        ),
                        const SizedBox(
                          width: 6.3,
                        ),
                        Text(
                          "4.8",
                          style: AppStyles.textStyle16(context),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          "(2390)",
                          style: AppStyles.textStyle14(context)
                              .copyWith(color: const Color(0xFF707070)),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
