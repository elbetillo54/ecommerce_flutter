import 'package:flutter/material.dart';
import 'package:ecommerce_flutter/models/Product.dart';

import '../../../constants.dart';

class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({super.key, required this.product});

  final Product product;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            product.title,
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(color: Colors.black87, fontWeight: FontWeight.bold, fontSize: 40),
          ),
          SizedBox(height: kDefaultPaddin),
          Expanded(
            child: Container(
              child: Image.asset(
                product.image,
                fit: BoxFit.fill,
              ),
            ),
          )
        ],
      ),
    );
  }
}
