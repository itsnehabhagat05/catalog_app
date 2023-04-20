import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_catalog/core/store.dart';
import 'package:flutter_catalog/models/cart.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/utils/routes.dart';
import 'package:flutter_catalog/widgets/home_widgets/catalog_header.dart';
import 'package:flutter_catalog/widgets/home_widgets/catalog_list.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  @override
  void initState() {
    
    super.initState();
    loadData();
  }

  loadData()async{
    await Future.delayed(Duration(seconds: 2));
    final catalogJson= await rootBundle.loadString("assets/files/catalog.json");
    // print(catalogJson);
    final decodedData = jsonDecode(catalogJson);
    final productsData =  decodedData["products"];
    CatalogueModel.items = List.from(productsData).map<Item>((item)=>Item.fromMap(item)).toList();
    setState(() {
      
    });
  }



  @override
  Widget build(BuildContext context) {
    // int days = 30;
    // String name = "codepur";
    // final dummyList = List.generate(12, (index) => CatalogModel.items[0]);
    
    final _cart = (VxState.store as MyStore).cart;
    return Scaffold(
      backgroundColor: context.canvasColor,
      floatingActionButton: VxBuilder(
        mutations: {AddMutation, RemoveMutation},
        builder: (context, MyStore, _) => FloatingActionButton(
          onPressed: () => Navigator.pushNamed(context, MyRoutes.cartRoute),
          backgroundColor: context.theme.buttonColor,
          child: Icon(
            CupertinoIcons.cart,
            color: Colors.white,
          ),
          ).badge(
              color: Vx.red500,
              size: 22,
              count: _cart.item.length,
              textStyle: TextStyle(
                  color:Colors.white, fontWeight: FontWeight.bold)),
        ),
      body: SafeArea(
        child: Container(
          padding: Vx.m32,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CatalogHeader(),
              if(CatalogueModel.items!=null && CatalogueModel.items !.isNotEmpty )
                CatalogList().expand()
              else
              CircularProgressIndicator().centered().py16().expand(),
            ]                         
          ),
        ),
      ),
      );
  }
}






 