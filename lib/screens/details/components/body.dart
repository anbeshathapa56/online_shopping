import 'dart:ui';

import 'package:flutter/material.dart';
import '../../../constant.dart';
import '../../../models/product.dart';

import 'product_title_with_image.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({required Key key, required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // It provide us total height and width
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: kDefaultPadding,
                    right: kDefaultPadding,
                  ),
                  // height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                ),
                ProductTitleWithImage(
                  product: product,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const ColorDot({
    Key? key, required this.color, required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          top: kDefaultPadding / 4,
          right: ChannelBuffers.kDefaultBufferSize / 2),
      padding: EdgeInsets.all(2.5),
      height: 20,
      width: 24,
      decoration: BoxDecoration(
          border: Border.all(
        color: color,
      )),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
