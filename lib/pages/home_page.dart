import 'package:flutter/material.dart';
import 'package:new_app/components/grocery_item_tile.dart';
import 'package:new_app/model/cart_model.dart';
import 'package:new_app/pages/cart_page.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: BackButton(),
          centerTitle: true,
          title: const Text('Shop Cart'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () =>
              Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const CartPage();
          })),
          // backgroundColor: Colors.purple,
          child: const Icon(Icons.shopping_bag),
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(
            height: 40,
          ),
          const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 24,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Good Morning',
                  ),
                  Text(
                    'replace door driving eight toy ',
                    style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                  ),
                ],
              )),
          const SizedBox(
            height: 24,
          ),
//
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Divider(
              thickness: 2,
            ),
          ),
          const SizedBox(
            height: 24,
          ),
//
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Text('Fresh items'),
          ),
          //
          Expanded(
            child: Consumer<CartModel>(builder: (context, value, child) {
              return GridView.builder(
                  padding: const EdgeInsets.all(12),
                  itemCount: value.shopItems.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 1 / 1.3, crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return GroceryItemTile(
                      itemName: value.shopItems[index][0],
                      itemPrice: value.shopItems[index][1],
                      imagePath: value.shopItems[index][2],
                      color: value.shopItems[index][3],
                      onPressed: () {
                        debugPrint('movieTitle: $index');
                        Provider.of<CartModel>(context, listen: false)
                            .addItemCart(index);
                      },
                    );
                  });
            }),
          ),
        ]));
  }
}
