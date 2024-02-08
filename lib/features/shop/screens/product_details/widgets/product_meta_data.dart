
import 'package:flutter/material.dart';
import '/../../../utils/constants/sizes.dart';
import '/../../../utils/constants/enums.dart';
import '/../../../utils/constants/image_strings.dart';
import '/../../../utils/constants/colors.dart';
import '/../../../utils/helpers/helper_functions.dart';



class TProductMetadata extends StatelessWidget {
  const TProductMetadata({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(TSizes.defaultSpace),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Row(
            

          )
          TProductTitleText(
            title: 'Green Nike Sports Shirt',
            smallSize: false,
            maxLines: 2,
            textAlign: TextAlign.left,
          ),
          SizedBox(height: TSizes.spaceBtwItems / 1.5),
          Row(
            children: [
              TProductTitleText(title: 'Status', smallSize: true),
              SizedBox(width: TSizes.spaceBtwItems),
              Text(
                'In Stock',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ],
          ),
          SizedBox(height: TSizes.spaceBtwItems / 1.5),
          Row(
            children: [
              TCircularImage(
                image: TImages.cosmeticsIcon,
                width: 32,
                height: 32,
                overlayColor: dark ? TColors.white : TColors.black,
              ),
              TBrandTitleWithVerifiedIcon(
                  title: 'Nike', brandTextSize: TextSizes.medium),
            ],
          ),
        ],
      ),
    );
  }
}
