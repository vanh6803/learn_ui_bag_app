import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/product.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final VoidCallback press;
  const ItemCard({Key? key, required this.product, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //dùng thẻ Expanded để dãn cách đều ảnh
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(kDefaultPading),
              // height: 180,
              // width: 160,
              decoration: BoxDecoration(
                color: product.color,
                borderRadius: BorderRadius.circular(16),
              ),
              child:
                  Hero(tag: '${product.id}', child: Image.asset(product.image)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPading / 4),
            child: Text(
              product.title,
              style: TextStyle(
                color: KTextLightColor,
              ),
            ),
          ),
          Text(
            '\$${product.price}',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
