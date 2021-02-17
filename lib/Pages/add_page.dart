
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoder/geocoder.dart';

class AddPage extends StatefulWidget{
 AddPage({key}) : super(key: key);

@override
_AddPageState createState() => _AddPageState();

}

class _AddPageState extends State<AddPage> {
  double latitudeData = 0;
  double longtitudeData = 0;
  var first;

  @override
  void initState() {
    super.initState();
    getCurrentLocation();
  }

  getCurrentLocation() async{
    final geoposition = await Geolocator
    .getCurrentPosition(desiredAccuracy: LocationAccuracy.best);
    
    setState(() {
      latitudeData = geoposition.latitude;
      longtitudeData = geoposition.longitude;
    });
    final coordinates = new Coordinates(
          geoposition.latitude, geoposition.longitude);
          var addresses = await Geocoder.local.findAddressesFromCoordinates(
          coordinates);
          var first = addresses.first;
          
  }

  @override
  Widget build(BuildContext context){
  return Scaffold(
    appBar: AppBar(
      title: Text('Add'),
      ),
      body: Column(
        children: [
          TextFormField(
          cursorColor: Theme.of(context).cursorColor,
         initialValue: 'Input text',
      
          maxLength: 20,
          decoration: InputDecoration(
            icon: Icon(Icons.favorite),
            labelText: 'Label text',
            helperText: 'Helper text',
            suffixIcon: Icon(
              Icons.check_circle,
            ),
          ),
        ),
        Text("IBRAHIM"),
        ],
      ),
      );

  }
}