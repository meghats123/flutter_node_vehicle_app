import 'package:flutter/material.dart';
import 'package:flutter_node_vehicle_app/screens/delete.dart';
import 'package:flutter_node_vehicle_app/screens/search.dart';
import 'package:flutter_node_vehicle_app/screens/update.dart';
import 'package:flutter_node_vehicle_app/screens/vehicleadd.dart';
class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.amber,
              ),
              accountName: null,
              accountEmail: null),
          ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>VehicleAdd()));
            },
            trailing: Icon(Icons.add),
            title: Text("Vehicle Entry"),
          ),
          ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>VehicleSearch()));
            },
            trailing: Icon(Icons.add),
            title: Text("Search"),
          ),
          ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>VehicleUpdate()));
            },
            trailing: Icon(Icons.add),
            title: Text("Update"),
          ),
          ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>VehicleDelete()));
            },
            trailing: Icon(Icons.add),
            title: Text("Delete"),
          ),
        ],
      ),
    );;
  }
}
