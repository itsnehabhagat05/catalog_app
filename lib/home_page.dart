import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  

  @override
  Widget build(BuildContext context) {
    int days = 30;
    String name = "codepur";

    return Scaffold(  
      appBar: AppBar(
        title: Text("MYAPP"),
      ),
        body:Center(
          child:Container(
            child: Text("Hello world - Welcome to $days days of flutter by $name"), 
          ),    
        ),
        drawer: Drawer(),
      );
  }
}