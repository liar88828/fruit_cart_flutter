import 'package:flutter/material.dart';
import 'package:new_app/model/cart_model.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        centerTitle: true,
        title: const Text(
          'My Cart',
        ),
      ),
      body: Consumer<CartModel>(
        builder: (context, value, child) {
          debugPrint(value.cartItems.toString());
          return Column(
            children: [
              Expanded(
                  child: ListView.builder(
                      padding: const EdgeInsets.all(12),
                      itemCount: value.cartItems.length,
                      itemBuilder: (context, index) {
                        debugPrint('test cart page: $index');
                        return Padding(
                          padding: EdgeInsets.all(12),
                          child: Container(
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(8)),
                            child: ListTile(
                              leading: Image.network(
                                value.cartItems[index][2],
                                height: 36,
                              ),
                              title: Text(value.cartItems[index][0]),
                              subtitle: Text(value.cartItems[index][1]),
                              trailing: IconButton(
                                  onPressed: () {
                                    Provider.of<CartModel>(
                                      context,
                                      listen: false,
                                    ).removeItemCart(index);
                                  },
                                  icon: Icon(Icons.cancel)),
                            ),
                          ),
                        );
                      })),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(12)),
                  padding: const EdgeInsets.all(24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Total Price',
                            style: TextStyle(
                              color: Colors.green[100],
                            ),
                          ),
                          Text(
                            '\$ ${value.calculateTotal()}',
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      OutlinedButton(
                          style: OutlinedButton.styleFrom(
                              side: const BorderSide(
                                  width: 1, color: Colors.white)),
                          onPressed: () {},
                          child: const Row(children: [
                            Text(
                              "Pay Now",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(Icons.arrow_forward_ios,
                                size: 20, color: Colors.white)
                          ]))
                    ],
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
