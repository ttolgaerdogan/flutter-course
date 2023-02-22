import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../core/store.dart';
import '../../models/cart.dart';
import '../../models/catalog.dart';

class AddToCart extends StatelessWidget {
  final Item catalog;
  const AddToCart({
    super.key,
    required this.catalog,
  });

  @override
  Widget build(BuildContext context) {
    // final _cart = CartModel();

    VxState.watch(context, on: [AddMutation]);
    final CartModel _cart = (VxState.store as MyStore).cart;
    // final CatalogModel _catalog = (VxState.store as MyStore).catalog;
    bool isInCart = _cart.items.contains(catalog);

    return ElevatedButton(
        onPressed: () {
          if (!isInCart) {
            // isInCart = isInCart.toggle();
            // _cart.catalog = _catalog;
            AddMutation(catalog);
          }
          // isInCart = isInCart.toggle();
          // final _catalog = CatalogModel();
          // final _cart = CartModel();

          // setState(() {});
        },
        // onPressed: () => Navigator.pushNamed(context, MyRoutes.cartRoute),
        style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all(context.theme.buttonColor),
            shape: MaterialStateProperty.all(const StadiumBorder())),
        child:
            isInCart ? Icon(Icons.done) : Icon(CupertinoIcons.cart_badge_plus));
  }
}
