import 'package:coffe_app/components/coffe_tile.dart';
import 'package:coffe_app/models/coffe_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/coffe.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  // add coffe to cart
  void addToCart(Coffe coffe) {
    Provider.of<CoffeShop>(context, listen: false).addItemToCart(coffe);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeShop>(
        builder: (context, value, child) => SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  children: [
                    // heading message
                    const Text(
                      'How would you like your coffe',
                      style: TextStyle(fontSize: 20),
                    ),

                    const SizedBox(height: 25),

                    // List of coffe to buy
                    Expanded(
                        child: ListView.builder(
                            itemCount: value.coffeShop.length,
                            itemBuilder: (context, index) {
                              // get individual coffe
                              Coffe eachCoffe = value.coffeShop[index];

                              // return the tile for this coffe
                              return CoffeTile(
                                coffe: eachCoffe,
                                icon: Icon(Icons.add),
                                onPressed: () => addToCart(eachCoffe),
                              );
                            }))
                  ],
                ),
              ),
            ));
  }
}
