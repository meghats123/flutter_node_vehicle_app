import 'package:flutter/material.dart';
import 'package:flutter_node_vehicle_app/models/vehicle.dart';
import 'package:flutter_node_vehicle_app/screens/mydrawer.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

  Future<Vehicle>sendData(String apiLink,{Map body})async{
    return http.post(apiLink,body:body).then((http.Response response){
      print(response.body);
      return json.decode(response.body);

    });
  }


class VehicleAdd extends StatelessWidget {
  TextEditingController VehicleNo=TextEditingController();
  TextEditingController ManufactureName=TextEditingController();
  TextEditingController ManufacturingYear=TextEditingController();
  TextEditingController ModelName=TextEditingController();
  TextEditingController OwnerName=TextEditingController();
  TextEditingController Address=TextEditingController();
  TextEditingController PhoneNo=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Vehicle Entry"),
          backgroundColor: Colors.amber,
        ),
        drawer: MyDrawer(),

        body: Container(
          padding: EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextField(
                  controller: VehicleNo,
                  decoration: InputDecoration(
                      hintText: "Enter Vehicle No",
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 10.0,),
                TextField(
                  controller: ManufactureName,
                  decoration: InputDecoration(
                      hintText: "Enter Manufacture Name",
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 10.0,),
                TextField(
                  controller: ManufacturingYear,
                  decoration: InputDecoration(
                      hintText: "Enter Manufacturing Year",
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 10.0,),
                TextField(
                  controller: ModelName,
                  decoration: InputDecoration(
                      hintText: "Enter Model Name",
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 10.0,),
                TextField(
                  controller: OwnerName,
                  decoration: InputDecoration(
                      hintText: "Enter Owner Name",
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 10.0,),
                TextField(
                  controller: Address,
                  decoration: InputDecoration(
                      hintText: "Enter Address",
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 10.0,),
                TextField(
                  controller: PhoneNo,
                  decoration: InputDecoration(
                      hintText: "Enter Phone Number",
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 10.0,),
                RaisedButton(onPressed: () async {
                  String getVehicleNo=VehicleNo.text;
                  String getManufactureName=ManufactureName.text;
                  String getManufacturingYear=ManufacturingYear.text;
                  String getModelName=ModelName.text;
                  String getOwnerName=OwnerName.text;
                  String getAddress=Address.text;
                  String getPhoneNo=PhoneNo.text;
                  Vehicle vehicledata=new Vehicle(
                    vehicleno:getVehicleNo,
                    manufacturename:getManufactureName,
                    manufacturingyear:getManufacturingYear,
                    modelname:getModelName,
                    ownername:getOwnerName,
                    address:getAddress,
                    phoneno:getPhoneNo,

                  );
                  Vehicle datatosend=await sendData("https://nodejsvehicleapp.herokuapp.com/vehicleadd",body: vehicledata.toJson());



                },
                  child: Text("SUBMIT"),
                  color: Colors.amber,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
