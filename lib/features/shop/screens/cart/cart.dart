import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/texts/product_price_text.dart';

import '../../../../common/widgets/products/cart/add_remove_button.dart';
import '../../../../common/widgets/products/cart/cart_item.dart';
import '../../../../utils/constants/sizes.dart';


class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

@override
Widget build (BuildContext context) {
  return Scaffold(
    -appBar: TAppBar (showBackArrow: true, title: Text('Cart', style: Theme.of (context).textTheme.headlineSmall)),
    body: Padding(
      padding: const EdgeInsets.all(TSizes.defaultSpace),
      -child: Listview.separated (
        shrinkwrap: true,
        itemCount: 10,
        separatorBuilder: (, )=> const SizedBox (height: TSizes.spaceBt Sections),
        itemBuilder: (, index) => const Column(
          children: [
            TCartItem(),
            SizedBox (height: TSizes.spaceBtwItens),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    /// Extra Space
                    SizedBox (width: 70),
                    /// Add Remove Buttons
                    TProduct QuantityWithAddRemoveButton(),
                    1,
                  ], // Row
                ), // Row
                /// Product total price
                TProductPriceText(price: '256'),
              ],
            ), // Row
            1,
          ],
        ), // Column
      ), // ListView.separated
    ), // Padding
    bottomNavigationBar: Padding(
      padding: const EdgeInsets.all(TSizes.defoultSpace),
      child: ElevatedButton(
        onPressed: () {},
        child: const Text('Checkout \$256.0'),
      ), // ElevatedButton
    ), // Padding
  ); // Scaffold
} // build
}