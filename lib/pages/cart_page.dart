import 'package:coffe_app/components/coffe_tile.dart';
import 'package:coffe_app/models/coffe.dart';
import 'package:coffe_app/models/coffe_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  // remove item from cart
  void removeFromCart(Coffe coffe) {
    Provider.of<CoffeShop>(context, listen: false).removeItemFromCart(coffe);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeShop>(
        builder: (context, value, child) => SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  children: [
                    // heading
                    Text(
                      'Your Cart',
                      style: TextStyle(fontSize: 20),
                    ),
                    // list of chart item
                    Expanded(
                        child: ListView.builder(
                            itemCount: value.userCart.length,
                            itemBuilder: ((context, index) {
                              // get individual cart icons
                              Coffe eachCoffe = value.userCart[index];
                              // return coffe tile
                              return CoffeTile(
                                  coffe: eachCoffe,
                                  onPressed: () => removeFromCart(eachCoffe),
                                  icon: Icon(Icons.delete));
                            })))
                  ],
                ),
              ),
            ));
  }
}
