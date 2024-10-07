import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List _shopItem = [
    [
      'Avocado',
      '4.00',
      'https://www.shutterstock.com/image-photo/bunch-bananas-isolated-on-white-600nw-1722111529.jpg',
      Colors.green
    ],
    [
      'Banana',
      '2.50',
      'https://www.shutterstock.com/image-photo/bunch-bananas-isolated-on-white-600nw-1722111529.jpg',
      Colors.yellow
    ],
    [
      'Chicken',
      '12.00',
      'https://www.shutterstock.com/image-photo/bunch-bananas-isolated-on-white-600nw-1722111529.jpg',
      Colors.brown
    ],
    [
      'Water',
      '4.00',
      'https://www.shutterstock.com/image-photo/bunch-bananas-isolated-on-white-600nw-1722111529.jpg',
      Colors.blue
    ],
  ];
// list
  List _cartItems = [];

  get shopItems => _shopItem;
  get cartItems => _cartItems;

  // add
  void addItemCart(int index) {
    _cartItems.add(_shopItem[index]);
    notifyListeners();
  }

  // remove
  void removeItemCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  // calculate
  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < _cartItems.length; i++) {
      totalPrice += double.parse(_cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
