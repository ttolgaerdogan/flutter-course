import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../models/cart.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: "Cart".text.make(),
      ),
      body: Column(
        children: [
          const _CartList().p32().expand(),
          const Divider(),
          const _CartTotal()
        ],
      ),
    );
  }
}

class _CartTotal extends StatelessWidget {
  const _CartTotal({super.key});

  @override
  Widget build(BuildContext context) {
    final _cart = CartModel();
    return SizedBox(
      height: 200,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        "${_cart.totalPrice} ₺"
            .text
            .xl5
            .color(context.theme.accentColor)
            .make(),
        30.widthBox,
        ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: "Buying not supported yet".text.make()));
                },
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(context.theme.buttonColor)),
                child: "Buy".text.white.make())
            .w32(context)
      ]),
    );
  }
}

class _CartList extends StatefulWidget {
  const _CartList({super.key});

  @override
  State<_CartList> createState() => __CartListState();
}

class __CartListState extends State<_CartList> {
  @override
  Widget build(BuildContext context) {
    final _cart = CartModel();
    return _cart.items.isEmpty
        ? "Your Cart Is Empty!".text.xl.makeCentered()
        : ListView.builder(
            itemCount: _cart.items.length,
            itemBuilder: (context, index) => ListTile(
                  leading: const Icon(Icons.done),
                  trailing: IconButton(
                    icon: const Icon(Icons.remove_circle_outline),
                    onPressed: () {
                      _cart.remove(_cart.items[index]);
                      setState(() {});
                    },
                  ),
                  title: _cart.items[index].name.text.make(),
                ));
  }
}
