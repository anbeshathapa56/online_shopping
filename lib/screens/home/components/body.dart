import 'package:flutter/material.dart';
import 'package:onlineshopping/constant.dart';
import 'package:onlineshopping/models/product.dart';
import 'package:onlineshopping/screens/home/components/item_card.dart';
import '../../details/deatils_screen.dart';
import 'categories.dart';
class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
            "Women",
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        const Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: GridView.builder(
                itemCount: products.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: kDefaultPadding,
                  crossAxisSpacing: kDefaultPadding,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (context, index) => ItemCard(
                  product: products[index],
                  press: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsScreen(
                          product: products[index],
                        ),
                      )),
                )),
          ),
        ),
      ],
    );
  }
}
class ColorandSize extends StatelessWidget {
  const ColorandSize({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}




