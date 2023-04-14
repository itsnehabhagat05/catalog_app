import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';


class HomeDetailPage extends StatelessWidget {
 
  final Item catalog ;

  const HomeDetailPage({Key ? key, required this.catalog}): assert(catalog!=null), super(key: key) ;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         backgroundColor: Colors.transparent ),
 
      backgroundColor: MyTheme.creamColor,
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
            children: [
              "\$${catalog.price}".text.bold.xl4.red900.make(),
              ElevatedButton(onPressed: (() {}), 
              style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(MyTheme.darkBluishColor),
              shape: MaterialStateProperty.all(StadiumBorder(),),
              ),
                  
              child: "Add To Cart".text.make(),).wh(120,50),
            ],
        ).p32(),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: Image.network(catalog.image)
            ).h32(context),
            Expanded(
              child: VxArc(
                height: 30.0 ,
                arcType: VxArcType.CONVEY,
                edge: VxEdge.TOP,
                child: Container(
                color: Colors.white,
                width: context.screenWidth,
                child: Column(
                  children: [
                    catalog.name.text.xl4.color(MyTheme.darkBluishColor).bold.make(),
                    catalog.desc.text.xl.textStyle(context.captionStyle)
                    .color(MyTheme.darkBluishColor).make(),
                    10.heightBox,
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed at urna sed sapien tempus ultricies m. Maecenas varius, dolor sit amet ultrices eleifend, sapien augue viverra . "
                    .text.textStyle(context.captionStyle).make().p16()
                  ],
                ).py32(),
                ),
              ))
          ],
        ),
      ),
    );
  }
}