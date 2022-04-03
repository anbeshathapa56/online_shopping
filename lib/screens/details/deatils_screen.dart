import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:onlineshopping/constant.dart';
import 'package:onlineshopping/screens/home/components/body.dart';
import '../../models/product.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({required this.product});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Body(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
          'assets/icons/back.svg',
          color: Colors.white,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset("assets/icons/search.svg"),
          onPressed: () {},
        ),
        IconButton(
          icon: SvgPicture.asset("assets/icons/cart.svg"),
          onPressed: () {},
        ),
        const SizedBox(width: kDefaultPadding / 2)
      ],
    );
  }
}
