import 'dart:ffi';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:myflutter_app/intro.dart';
import 'package:latlong/latlong.dart';
import 'package:geolocation/geolocation.dart';
import 'package:geolocator/geolocator.dart' as eos;






class AroundmePage extends StatefulWidget{
 AroundmePage({key}) : super(key: key);

@override
_AroundmePageState createState() => _AroundmePageState();

}

class _AroundmePageState extends State<AroundmePage> {
  MapController controller = new MapController();
//
double latitudeData=0;
double longtitudeData=0;

@override
  void initState() {
    super.initState();
    getCurrentLocation();
  }
  
getCurrentLocation() async{
    final geoposition = await Geolocator
    .getCurrentPosition(desiredAccuracy: eos.LocationAccuracy.best);
    
    setState(() {
      latitudeData = geoposition.latitude;
      longtitudeData = geoposition.longitude;
    });
  }

  getLocation() async{
  
         final coords = await Geolocator.getCurrentPosition(desiredAccuracy: eos.LocationAccuracy.best);
         controller.move(LatLng(coords.latitude,coords.longitude), 15);
         return coords; 
    }

  buildMap() {
    getLocation().then((response) {
        response.listen((value) {
        });
    });
  }

  @override
  Widget build(BuildContext context){

  return Scaffold(
    appBar: AppBar(
      title: Text('Around Me'),
      ),
      body: new FlutterMap(
        mapController: controller,
        options: new MapOptions(
          
         // center: new LatLng(latitudeData, longtitudeData), minZoom: 10.0),
         center: buildMap(), minZoom: 5.0),
          layers: [
            new TileLayerOptions(
              urlTemplate:
              "https://api.mapbox.com/styles/v1/ibro99/ckju0zgmj0h0h19qnl7ry3cun/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoiaWJybzk5IiwiYSI6ImNraWo5aHB2bDAwa3MydG56dXkybmp3NmcifQ.3Kdvh1kOoQGYronCwn1oiw",
              additionalOptions: {
                'accesToken': 'pk.eyJ1IjoiaWJybzk5IiwiYSI6ImNraWo5aHB2bDAwa3MydG56dXkybmp3NmcifQ.3Kdvh1kOoQGYronCwn1oiw',
                'id': 'mapbox.mapbox-streets-v8'
              }
            ),
            
            new MarkerLayerOptions(markers: [
              new Marker(
                width: 45.0,
                height: 45.0,
                point: LatLng(latitudeData, longtitudeData),
                
                builder: (context) => new Container(
                  child: IconButton(
                    icon: Icon(Icons.my_location),
                    color: Colors.blue,
                    iconSize: 15.0,
                    onPressed: () {
                      print('Marker Tapped');
                    },
                    ),
                )
              )
            ])
          ], 

           ),
           floatingActionButton: FloatingActionButton(
             child: Icon(Icons.location_searching),
              onPressed: () { 
              buildMap();

              },),
        
      );
      

  }

  
}