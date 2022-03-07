import 'package:flutter/material.dart';
import 'package:sebel_grocery/constants.dart';
import 'package:sebel_grocery/models/product.dart';

import 'components/header.dart';
import 'components/product_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: false,
        child: Container(
          color: const Color(0xFFEAEAEA),
          child: LayoutBuilder(builder: (
            context,
            BoxConstraints constraints,
          ) {
            return Stack(
              children: [
                const Positioned(
                  top: 0,
                  right: 0,
                  left: 0,
                  height: headerHeight,
                  child: HomeHeader(),
                ),
                Positioned(
                  top: headerHeight,
                  left: 0,
                  right: 0,
                  height: constraints.maxHeight - headerHeight - cartBarHeight,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: defaultPadding),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(defaultPadding * 1.5),
                        bottomRight: Radius.circular(defaultPadding * 1.5),
                      ),
                    ),
                    child: GridView.builder(
                      itemCount: demoProducts.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 0.75,
                        mainAxisSpacing: defaultPadding,
                        crossAxisSpacing: defaultPadding,
                      ),
                      itemBuilder: (context, index) => ProductCard(
                        product: demoProducts[index],
                        press: () {},
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  height: cartBarHeight,
                  child: Container(
                    color: Colors.red,
                  ),
                )
              ],
            );
          }),
        ),
      ),
    );
  }
}
