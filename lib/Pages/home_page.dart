import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  

  @override
  Widget build(BuildContext context) {
    int days = 30;
    String name = "codepur";

    return Scaffold(  
      appBar: AppBar(
        title: Text("Catalog App",
        ),
        
      ),
        body:Center(
          child:Container(
            child: Text("Hello world - Welcome"), 
          ),    
        ),
        drawer: MyDrawer(),
      );
  }
}