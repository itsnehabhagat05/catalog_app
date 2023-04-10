// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class CatalogModel{
  static  List<Item> items = [
//     Item(
//       id: 1,
//       name: "iPhone12 Pro",
//       desc: "Apple iPhone 12th generation",
//       price: 10000,
//       color: "#33505a",
//       image: "https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T1/images/I/41TFh8QjaTL.jpg"),

// 
];
  
}

class Item{

  final int id ;
  final String name ;
  final String desc ;
  final num price;
  final String color ;
  final String image;

  Item({required this.id,
    required this.name,
    required this.desc,
    required this.price,
    required this.color,
    required this.image,});


    factory Item.fromMap(Map<String, dynamic>map){
      return Item(
        id: map["id"],
        name: map["name"],
        desc: map["desc"],
        price: map["price"],
        color: map["color"],
        image: map["image"],
      );
    }

    tomap() => {
      "id":id,
      "name" :name,
      "desc" : desc,
      "price":price,
      "color":color,
      "image" :image
    };
   
}

