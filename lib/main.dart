import 'package:flutter/material.dart';
import 'package:flutter_node_vehicle_app/screens/mydrawer.dart';


void main()=>runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Vehicle App"),
          backgroundColor: Colors.amber,
        ),
       drawer: MyDrawer(),
        body: Container(),
      ),
    );
  }
}
