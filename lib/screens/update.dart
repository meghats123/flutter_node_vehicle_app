import 'package:flutter/material.dart';
import 'package:flutter_node_vehicle_app/screens/mydrawer.dart';

class VehicleUpdate extends StatelessWidget {
  TextEditingController VehicleNo=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Update"),
          backgroundColor: Colors.amber,
        ),
        drawer: MyDrawer(),
        body: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(
                controller: VehicleNo,
                decoration: InputDecoration(
                    hintText: "Enter Vehicle No",
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 20.0,),
              RaisedButton(onPressed: (){
                String getAdmno=VehicleNo.text;
                print(getAdmno);

              },
                child: Text("SEARCH"),
                color: Colors.amber,
              )
            ],
          ),
        ),
      ),
    );
  }
}
