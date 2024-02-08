import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';
import 'package:t_store/utils/constants/colors.dart';


class UserReviewCard extends StatelessWidget {
  const UserReviewCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(backgroundImage: AssetImage(TImages.userProfileImage1)),
                const SizedBox(width: TSizes.spaceBtwItems),
                Text('John Doe', style: Theme.of(context).textTheme.titleLarge),
              ],
            ), // Row
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert),
            ),
          
            Row(
              children: [
                const TRatingBarIndicator(rating: 4),
                const SizedBox(width: TSizes.spaceBtwItems),
                Text('01 Nov, 2023', style: Theme.of(context).textTheme.bodyMedium),
              ],
            ), // Row
            const SizedBox(height: TSizes.spaceBtwItems),
            const ReadMoreText(
              'The user interface of the app is quite intuitive. I was able to navigate and make purchases seamlessly. Great job!',
              trimLines: 2,
              trimMode: TrimMode.Line,
              trimExpandedText: 'show less',
              trimCollapsedText: 'show more',
              moreStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: dark ? TColors.primaryDark : TColors.primary),
              lessStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: dark ? TColors.primaryDark : TColors.primary),
            ), // ReadMoreText
            const SizedBox(height: TSizes.spaceBtwItems),
// ======================================================================================== //
                

        const SizedBox(height: TSizes.spaceBtwItems),



         TRoundedContainer(
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          child: Padding(
            padding: const EdgeInsets.all(TSizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("T's Store",style: Theme.of(context).textTheme.titleMedium),
                    Text('02 Nov, 2023',style: Theme.of(context).textTheme.bodyMedium),
                  ],
                ), // Row


                const SizedBox(height: TSizes.spaceBtwItems),
                const ReadMoreText(
                  'The user interface of the app is quite intuitive. I was able to navigate and make purchases seamlessly. Great job!',
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimExpandedText: 'show less',
                  trimCollapsedText: 'show more',
                  moreStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: TColors.primary),
                  lessStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: TColors.primary),
                ),
              ],
            ),
          ),
        ),
          ],
        ),
      ],
    );
  }
}
// ======================================================================================== //
