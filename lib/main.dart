import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wed/first.dart';
import 'package:wed/four.dart';
import 'package:wed/three.dart';
import 'package:wed/two.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     //home: FoodSelectionPage(),
     //home:third(),
    //home: fourth(),
    home: WeddingCateringPage(),
     
      debugShowCheckedModeBanner: false,
      
    );
  }
}

  