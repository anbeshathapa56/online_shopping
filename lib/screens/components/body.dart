import 'package:flutter/material.dart';
import 'package:onlineshopping/constant.dart';
import 'package:onlineshopping/models/product.dart';
import 'package:onlineshopping/screens/components/categories.dart';
class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
            "Womens Accessories",
            style: Theme.of(context)
            .textTheme
            .headline5!
            .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Categories(),
        Container(
          height: 100,
          width: 160,
          decoration: BoxDecoration(color: products[0].color,
          borderRadius: BorderRadius.circular(16),
          ),
          child: Image.asset(products[0].image),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPadding/4),
          child: Text(products[0].title, style: TextStyle(
            color: kTextColor
          ),),
        )
      ],
    );
  }
}


