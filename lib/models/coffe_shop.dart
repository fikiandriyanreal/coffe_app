import 'dart:js';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'coffe.dart';

class CoffeShop extends ChangeNotifier {
  // Coffe for sale List
  final List<Coffe> _shop = [
    // Black coffe
    Coffe(
        name: 'Long Black',
        price: "4.10",
        imagePath: "assets/images/coffe_1.png"),

    // Latte
    Coffe(
        name: 'Long Black',
        price: "4.10",
        imagePath: "assets/images/coffe_2.png"),

    // Espresso
    Coffe(
        name: 'Long Black',
        price: "4.10",
        imagePath: "assets/images/coffe_3.png"),

    // Iced Coffe
    Coffe(
        name: 'Long Black',
        price: "4.10",
        imagePath: "assets/images/coffe_4.png"),
  ];

  // user cart
  List<Coffe> _userCart = [];

  // get Coffe List
  List<Coffe> get coffeShop => _shop;

  // get user cart
  List<Coffe> get userCart => _userCart;

  // add item to cart
  void addItemToCart(Coffe coffe) {
    _userCart.add(coffe);
    notifyListeners();
  }

  // remove item for cart
  void removeItemToCart(Coffe coffe) {
    _userCart.remove(coffe);
    notifyListeners();
  }

  void removeItemFromCart(Coffe coffe) {
    _userCart.remove(coffe);
    notifyListeners();
  }
}
