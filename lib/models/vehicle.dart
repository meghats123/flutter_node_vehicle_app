/// _id : "60308f6dba29130c28290795"
/// vehicleno : 1102
/// manufacturename : "dcc"
/// manufacturingyear : 2021
/// modelname : "xyz"
/// ownername : "Rema"
/// address : "kiygfh"
/// phoneno : 9865425684

class Vehicle {
  //String _id;
  String vehicleno;
  String manufacturename;
  String manufacturingyear;
  String modelname;
  String ownername;
  String address;
  String phoneno;


  Vehicle({this.vehicleno, this.manufacturename, this.manufacturingyear,
      this.modelname, this.ownername, this.address, this.phoneno});

  Vehicle.fromJson(dynamic json) {
   // _id = json["_id"];
    vehicleno = json["vehicleno"];
    manufacturename = json["manufacturename"];
    manufacturingyear = json["manufacturingyear"];
    modelname = json["modelname"];
    ownername = json["ownername"];
    address = json["address"];
    phoneno = json["phoneno"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    //map["_id"] = _id;
    map["vehicleno"] = vehicleno;
    map["manufacturename"] = manufacturename;
    map["manufacturingyear"] = manufacturingyear;
    map["modelname"] = modelname;
    map["ownername"] = ownername;
    map["address"] = address;
    map["phoneno"] = phoneno;
    return map;
  }

}