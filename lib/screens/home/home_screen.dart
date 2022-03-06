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
          child: Column(
            children: [
              const HomeHeader(),
              Expanded(
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
              const SizedBox(
                height: cartBarHeight,
              )
            ],
          ),
        ),
      ),
    );
  }
}
