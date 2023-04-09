

class Item{

  final String id ;
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
   
}

final products = [Item(
  id: "Yuppy001",
  name: "iPhone12 Pro",
  desc: "Apple iPhone 12th generation",
  price: 10000,
  color: "#33505a",
  image: "https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T1/images/I/41TFh8QjaTL.jpg"),

];