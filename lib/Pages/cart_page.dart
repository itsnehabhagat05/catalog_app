import 'package:flutter/material.dart';
import 'package:flutter_catalog/core/store.dart';
import 'package:flutter_catalog/models/cart.dart';
import 'package:velocity_x/velocity_x.dart';

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
      body: Column(children: [
        _CartList().p32().expand(),Divider(),
        _CartTotal(),
      ]),
    );
  }
}

class _CartTotal extends StatelessWidget {
  const _CartTotal({super.key});

  @override
  Widget build(BuildContext context) {
    final CartModel _cart = (VxState.store as MyStore).cart;

    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          VxBuilder(
            // notifications: {},
            mutations: {RemoveMutation},
            builder: (context, MyStore, _) {
              // print("Rebuild Happened");
              return "\$${_cart.totalPrice}"
                  .text
                  .xl5
                  .color(context.theme.accentColor)
                  .make();
            },
          ),
          30.widthBox,
          ElevatedButton(onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:"Buying not supported yet".text.make(),));
          },
          style: ButtonStyle(
            backgroundColor: 
            MaterialStateProperty.all(context.theme.buttonColor)
          ),
          child: "Buy ".text.white.make(),

          ).w32(context)

        ],
      ),
    );
  }
}


  

class _CartList extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    VxState.watch(context, on: [RemoveMutation]);
    final CartModel _cart = (VxState.store as MyStore).cart;
    return _cart.item.isEmpty ? "Nothing to show".text.xl3.makeCentered() : ListView.builder(
      itemCount: _cart.item.length,
      itemBuilder: (context, index) => ListTile(
        leading: Icon(Icons.done),
        trailing: IconButton(icon: Icon(Icons.remove_circle_outlined),
        onPressed: () =>
          RemoveMutation(_cart.item[index])
        
        
        ),

        title: _cart.item[index].name.text.make(),
      ),
    );
  }
}